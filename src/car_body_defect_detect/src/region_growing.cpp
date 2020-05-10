#include "ros/ros.h"
#include "car_body_defect_detect/region_grow.h"
#include "car_body_defect_detect/visualize_region_grow.h"

#include <iostream>
#include <vector>
#include <thread>
#include <pcl/point_types.h>
#include <pcl/io/pcd_io.h>
#include <pcl/search/search.h>
#include <pcl/search/kdtree.h>
#include <pcl/features/normal_3d.h>
#include <pcl/segmentation/region_growing.h>
#include <pcl/visualization/pcl_visualizer.h>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/common/impl/io.hpp>

using namespace std;

int user_data;
double dur_time;
clock_t start_t ;
clock_t end_t ;
ros::Subscriber sub1;
ros::Subscriber sub2;
ros::Publisher pub1;
ros::Publisher pub2; 
pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>);
pcl::PointCloud<pcl::Normal>::Ptr normals (new pcl::PointCloud<pcl::Normal>);
pcl::PointCloud <pcl::PointXYZRGB>::Ptr colored_cloud;
pcl::PointCloud <pcl::PointXYZ>::Ptr normal_cloud(new pcl::PointCloud <pcl::PointXYZ>());
pcl::PointCloud <pcl::PointXYZ>::Ptr defect_cloud(new pcl::PointCloud <pcl::PointXYZ>());

void
points_store (const sensor_msgs::PointCloud2ConstPtr& cloud_msg)
{
 
  //First, receive data from topic and store it here
  pcl::fromROSMsg(*cloud_msg, *cloud);   
  std::cout << "[region_grow]Received the point cloud and stored"<<endl;
}

void
normals_store (const sensor_msgs::PointCloud2ConstPtr& normals_msg)
{
   pcl::fromROSMsg(*normals_msg, *normals);
   std::cout << "[region_grow]Received the cloud normals and stored"<<endl;
}

   /*
 }
  {
  cloud->points.resize(cloud_normals.points.size()) ;
  normals->points.resize(cloud_normals.points.size()) ;

  for(std::size_t i = 0; i < cloud_normals.points.size(); ++i ) 
  {
   cloud->points[i].x = cloud_normals.points[i].x;
   cloud->points[i].y = cloud_normals.points[i].y;
   cloud->points[i].z = cloud_normals.points[i].z;
   normals->points[i].normal_x = cloud_normals.points[i].normal_x;
   normals->points[i].normal_y = cloud_normals.points[i].normal_y;
   normals->points[i].normal_z = cloud_normals.points[i].normal_z;
   //std::cout<<normals->points[i].normal_x<<" "<<normals->points[i].normal_y<<" "<<normals->points[i].normal_z<<endl;
  }
  
  std::cout<<"[region_grower]Data received form topic: pointcloud_with_normals, ready to do the normal based region grow clustering"<<endl;
}

 */
bool visualize_region_grow(car_body_defect_detect::visualize_region_grow::Request  &req, 
                           car_body_defect_detect::visualize_region_grow::Response &res )
{
  // Visualization
  pcl::visualization::PCLVisualizer::Ptr viewer (new pcl::visualization::PCLVisualizer ("Point Cloud Viewer"));
  viewer->initCameraParameters ();
  
  int v1(0);
  viewer->createViewPort(0.0, 0.0, 0.5, 1.0, v1);
  viewer->setBackgroundColor (0, 0, 0, v1);
  viewer->addText("cluster result", 10, 10, "v1 text", v1);
  pcl::visualization::PointCloudColorHandlerRGBField<pcl::PointXYZRGB> rgb(colored_cloud);
  viewer->addPointCloud<pcl::PointXYZRGB> (colored_cloud, rgb, "sample cloud1",v1);
  
  
  int v2(0);
  viewer->createViewPort(0.5, 0.0, 1.0, 1.0, v2);
  viewer->setBackgroundColor (0.3, 0.3, 0.3, v2);
  viewer->addText("defect_cloud", 10, 10, "v2 text", v2);
  pcl::visualization::PointCloudColorHandlerCustom<pcl::PointXYZ> single_color(defect_cloud, 0, 255, 0);
  viewer->addPointCloud<pcl::PointXYZ> (defect_cloud, single_color, "sample cloud2", v2);
  
  
  viewer->setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 1, "sample cloud1");
  viewer->setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 1, "sample cloud2");
  viewer->addCoordinateSystem (1.0);
  
  //pcl::visualization::CloudViewer viewer1 ("Cluster viewer1");
  //viewer1.showCloud(defect_cloud);  

   while (!viewer->wasStopped ())
  {
    viewer->spinOnce (100);
    //std::this_thread::sleep_for(100ms);
  }
}


bool region_grow (car_body_defect_detect::region_grow::Request  &req, 
                  car_body_defect_detect::region_grow::Response &res )
{
  //Do the cluster when the service is called, data is the last data published to topic: pointcloud_with_normals
  pcl::search::KdTree<pcl::PointXYZ>::Ptr Neighbor(new pcl::search::KdTree<pcl::PointXYZ>());
  pcl::RegionGrowing<pcl::PointXYZ, pcl::Normal> reg;
  reg.setMinClusterSize (1);
  reg.setMaxClusterSize (1000000);
  reg.setSearchMethod (Neighbor);
  reg.setNumberOfNeighbours (10);
  reg.setInputCloud (cloud);
  //reg.setIndices (indices);
  reg.setInputNormals (normals);
  //Set the threshold for the curvature in a cluster
  std::cout << "[region_grower]Set the threshold for the curvature in a cluster:(1.0 maybe OK)"<<std::endl ;
  float Curvaturethreshold ;
  std::cin >> Curvaturethreshold ;
  std::cout << std::endl ;
  //Set the threshold for the angle between normals in a cluster
  std::cout << "[region_grower]Set the threshold  for the angle between normals in a cluster:(X/180*pi, please input X)"<<std::endl ;
  float smoothnessthreshold ;
  std::cin >> smoothnessthreshold ;
  smoothnessthreshold = smoothnessthreshold/180.0 * M_PI ;
  reg.setSmoothnessThreshold (smoothnessthreshold);
  reg.setCurvatureThreshold (Curvaturethreshold);
  start_t = clock();
  std::cout << "[region_grower]Region growing..."<<std::endl ;
  std::vector <pcl::PointIndices> clusters;
  reg.extract (clusters);
  end_t = clock();
  dur_time = (double) ((end_t - start_t)/CLOCKS_PER_SEC);
  std::cout << "[region_grower]Region growing completed."<<std::endl 
            << "[region_grower]It takes "<< dur_time <<"s"<<endl ;

  std::cout << "[region_grower]Number of clusters is equal to " << clusters.size () << std::endl;

  colored_cloud = reg.getColoredCloud ();
   
  pcl::copyPointCloud(*cloud,clusters[0].indices,*normal_cloud);
  
  //Gather all the defect point into one cluster 
  std::vector<int> defect_clusters;
     //indices are of the same type as std::vector<int>
  for(std::size_t i = 1;i < clusters.size ();i++)
  {
//   for(std::size_t count = 0;count < clusters[i].indices.size ();count++)
//      {
        defect_clusters.insert(defect_clusters.end(), clusters[i].indices.begin(),clusters[i].indices.end());
        //put the indice in the cluster to the end of the defect_cluster
//      }
  }
  pcl::copyPointCloud(*cloud,defect_clusters,*defect_cloud);
  
  //Publish the defect point cloud to the topic
  sensor_msgs::PointCloud2 defect_point_cloud;
  sensor_msgs::PointCloud2 surface_point_cloud;
  pcl::toROSMsg(*defect_cloud, defect_point_cloud);
  pcl::toROSMsg(*normal_cloud, surface_point_cloud);
  pub1.publish(defect_point_cloud);
  pub2.publish(surface_point_cloud);
  std::cout << "[region_grower]Published to topic:defect_cloud"<<std::endl;
 
}


int
main (int argc, char** argv)
{ 
  ros::init (argc, argv, "region_growing");
  ros::NodeHandle nh; 

  //define the service region_grow
  ros::ServiceServer service1 = nh.advertiseService("region_grow", region_grow);
  std::cout<<"[region_grower]Service 'region_grow' is now ready for detecting defects by normal-based region grow algorithm"<<endl;

  ros::ServiceServer service2 = nh.advertiseService("visualize_region_grow", visualize_region_grow);
  std::cout<<"[region_grower]Service 'visualize_region_grow' is now ready for visualize the result of region grow."<<endl;

  // tell the master node the information about the ROS subscriber 
  sub1 = nh.subscribe("init_pointcloud", 1, points_store);
  sub2 = nh.subscribe("cloud_normals",1,normals_store);

  // tell the master node the information about the ROS publisher 
  pub1 = nh.advertise<sensor_msgs::PointCloud2> ("defect_cloud", 1);
  pub2 = nh.advertise<sensor_msgs::PointCloud2> ("surface_cloud", 1);
  

  std::cout<<"[region_grower]Ready to detect defect for point cloud from topic: pointcloud_with_normals"<<endl;
  
  // Spin
  ros::Rate loop_rate(10);
  while (ros::ok())
  {
    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}
