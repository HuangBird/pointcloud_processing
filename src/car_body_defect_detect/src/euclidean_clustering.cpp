#include "ros/ros.h"
#include "car_body_defect_detect/visualize_defect.h"

#include <iostream>
#include <vector>
#include <thread>
#include <pcl/point_types.h>
#include <pcl/search/search.h>
#include <pcl/search/kdtree.h>
#include <pcl/features/normal_3d.h>
#include <pcl/visualization/pcl_visualizer.h>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/common/impl/io.hpp>
#include <pcl/segmentation/extract_clusters.h>

using namespace std;

double dur_time;
clock_t start_t ;
clock_t end_t ;
ros::Subscriber sub;
ros::Publisher pub1;
ros::Publisher pub2;
pcl::PointCloud<pcl::PointXYZRGB>::Ptr defect_final_colored(new pcl::PointCloud<pcl::PointXYZRGB>()); //The colored defect point cloud based on euclidean clustering 

//visualization for colored defect point cloud based on euclidean clustering
bool visualize_defect (car_body_defect_detect::visualize_defect::Request  &req, 
                       car_body_defect_detect::visualize_defect::Response &res )
{
   // Visualization
    pcl::visualization::PCLVisualizer::Ptr viewer (new pcl::visualization::PCLVisualizer ("Point Cloud Viewer"));
    viewer->initCameraParameters ();
    viewer->setBackgroundColor (0, 0, 0);

    //std::cout<< r<<" "<<g<<" "<<b<<endl; 
    //pcl::visualization::PointCloudColorHandlerCustom<pcl::PointXYZ> single_color(defect_final, r, g, b);
    pcl::visualization::PointCloudColorHandlerRGBField<pcl::PointXYZRGB> rgb(defect_final_colored);
    viewer->addPointCloud<pcl::PointXYZRGB> (defect_final_colored, rgb, "sample cloud");
    viewer->setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 1, "sample cloud");
    viewer->addCoordinateSystem (1.0);
  
  //pcl::visualization::CloudViewer viewer1 ("Cluster viewer1");
  //viewer1.showCloud(defect_cloud);  
  
  while (!viewer->wasStopped ())
  {
    viewer->spinOnce (100);
    //std::this_thread::sleep_for(100ms);
  }
}

//clustering service
void
euclidean_clustering (const sensor_msgs::PointCloud2ConstPtr& defect_point_cloud)
{
 
  pcl::PointCloud<pcl::PointXYZ>::Ptr defect_cloud (new pcl::PointCloud<pcl::PointXYZ>);
  //First, receive data from topic and store it here
  //Second, convert the PointNormal data to pointXYZ data and Normal data
  pcl::fromROSMsg(*defect_point_cloud, *defect_cloud);   
  
  //Do the euclidean cluster
  pcl::search::KdTree<pcl::PointXYZ>::Ptr Neighbor(new pcl::search::KdTree<pcl::PointXYZ>());
  Neighbor->setInputCloud(defect_cloud);
  std::vector<pcl::PointIndices> defect_final_cluster_indices;
  pcl::EuclideanClusterExtraction<pcl::PointXYZ> ec;
  std::cout <<"[euclidean_cluster]Set the distance tolerance (mm)"<<endl;
  double dis_tor;
  std::cin >> dis_tor;
  ec.setClusterTolerance (dis_tor); // the unit is m
  ec.setMaxClusterSize (100000);  
  ec.setMinClusterSize (30);  // only care about defect contain large amount of points
  ec.setSearchMethod (Neighbor);
  ec.setInputCloud (defect_cloud);
  ec.extract(defect_final_cluster_indices);
  
  std::size_t k = defect_final_cluster_indices.size();
  std::cout <<"number of defect cluster is: "<< k <<endl; 

   //gather each indice, then publish and store for visualization
  pcl::PointCloud<pcl::PointXYZ>::Ptr defect_final (new pcl::PointCloud<pcl::PointXYZ>());  
  defect_final_colored->points.resize(defect_cloud->points.size());
  sensor_msgs::PointCloud2 defect_cluster;

  int count = 0;
  for(std::size_t j = 0; j < k; j++)
  {
    //rebuild the point cloud in each loop and change a color then put them into one XYZRGB point cloud for visualization
    defect_final->points.resize(defect_final_cluster_indices[j].indices.size());
    pcl::copyPointCloud(*defect_cloud,defect_final_cluster_indices[j].indices,*defect_final);
    pcl::toROSMsg(*defect_final, defect_cluster);
    pub1.publish(defect_cluster);
    
    //attach a color for points in each defect and store them for visualization  
    double r = rand()/double(RAND_MAX) * 255;
    double g = rand()/double(RAND_MAX) * 255;
    double b = rand()/double(RAND_MAX) * 255;
       for(std::size_t i = 0; i < defect_final_cluster_indices[j].indices.size(); ++i ) 
      {
       defect_final_colored->points[count].x = defect_final->points[i].x;
       defect_final_colored->points[count].y = defect_final->points[i].y;
       defect_final_colored->points[count].z = defect_final->points[i].z;
       defect_final_colored->points[count].r = r;
       defect_final_colored->points[count].g = g;
       defect_final_colored->points[count].b = b;
       count++;
      }

  }

  std::cout <<"[euclidean_cluster]Euclidean clustering finished."<<endl;
}


int
main (int argc, char** argv)
{ 
  ros::init (argc, argv, "Euclidean_clustering");
  ros::NodeHandle nh; 
  
  // tell the master node the information about the ROS subscriber 
  sub = nh.subscribe("defect_cloud", 1, euclidean_clustering);
  
  //the first publisher publish the point cloud of one of the defects got by euclidean clustering
  pub1 = nh.advertise<sensor_msgs::PointCloud2> ("defect_cloud_clusters", 20);

  ros::ServiceServer service = nh.advertiseService("visualize_defect", visualize_defect);
  std::cout<<"[euclidean_cluster]Service 'visualize_defect' now is ready for visualization of defect after clustering."<<endl;

  // tell the master node the information about the ROS publisher 
  //  pub = nh.advertise<sensor_msgs::PointCloud2> ("defect_clusters", 1);
  std::cout<<"[euclidean_cluster]Ready to do the final cluster for defect_cloud"<<endl;
 

  // Spin
  ros::Rate loop_rate(10);
  while (ros::ok())
  {
    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}
