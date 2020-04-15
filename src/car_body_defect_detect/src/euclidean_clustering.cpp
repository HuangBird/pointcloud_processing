#include "ros/ros.h"

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

int user_data;
double dur_time;
clock_t start_t ;
clock_t end_t ;
ros::Subscriber sub;
ros::Publisher pub;

/*
pcl::visualization::PCLVisualizer::Ptr //visualize the point cloud
SimplePointsVis(pcl::PointCloud<pcl::PointXYZ>::ConstPtr cloud)
{
  pcl::visualization::PCLVisualizer::Ptr viewer (new pcl::visualization::PCLVisualizer ("Point Cloud Viewer"));
  viewer->setBackgroundColor (0, 0, 0);
  double r = rand()/double(RAND_MAX) * 255;
  double g = rand()/double(RAND_MAX) * 255;
  double b = rand()/double(RAND_MAX) * 255;
  std::cout<< r<<" "<<g<<" "<<b<<endl; 
  pcl::visualization::PointCloudColorHandlerCustom<pcl::PointXYZ> single_color(cloud, r, g, b);
  viewer->addPointCloud<pcl::PointXYZ> (cloud, single_color, "sample cloud");
  viewer->setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 1, "sample cloud");
  viewer->addCoordinateSystem (1.0);
  viewer->initCameraParameters ();
  return(viewer);
}
*/

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
  std::cout << k <<endl; 
   //gather each indice and do visualization for them
  pcl::PointCloud<pcl::PointXYZ>::Ptr defect_final (new pcl::PointCloud<pcl::PointXYZ>()); 
  pcl::PointCloud<pcl::PointXYZRGB>::Ptr defect_final_colored(new pcl::PointCloud<pcl::PointXYZRGB>()); 
  defect_final_colored->points.resize(defect_cloud->points.size());
  
  int count = 0;
  for(std::size_t j = 0; j < k; j++)
  {
    //rebuild the point cloud in each loop and change a color then put them into one XYZRGB point cloud for visualization
  //  std::cout << "Input the number of cloud you want to visualize"<<endl;
  //  int j;
  //  std::cin >> j ;
    defect_final->points.resize(defect_final_cluster_indices[j].indices.size());
    pcl::copyPointCloud(*defect_cloud,defect_final_cluster_indices[j].indices,*defect_final);
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
  
  std::cout<<"[euclidean_cluster]Finish the final euclidean cluster"<<endl;
  
   while (!viewer->wasStopped ())
  {
    viewer->spinOnce (100);
    //std::this_thread::sleep_for(100ms);
  }
  
}


int
main (int argc, char** argv)
{ 
  ros::init (argc, argv, "Euclidean_clustering");
  ros::NodeHandle nh; 
  
  // tell the master node the information about the ROS subscriber 
  sub = nh.subscribe("defect_cloud", 1, euclidean_clustering);

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
