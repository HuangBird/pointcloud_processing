#include "ros/ros.h"
#include <iostream>
#include <pcl/point_types.h>
#include <pcl/common/common_headers.h>
#include <pcl/features/normal_3d.h>
#include <pcl/console/parse.h>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <ctime>
#include <pcl/segmentation/region_growing.h>
#include <pcl/search/search.h>
#include <pcl/search/kdtree.h>
#include <pcl/visualization/cloud_viewer.h>

using namespace std;

int user_data;
double dur_time;
clock_t start_t ;
clock_t end_t ;
ros::Subscriber sub;
ros::Publisher pub;


void calculate_normal (const sensor_msgs::PointCloud2ConstPtr& init_pointcloud)
{
  //calculate the normal from the topic:init_pointcloud  
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>);
  sensor_msgs::PointCloud2 cloud_with_normals;
  pcl::PointCloud<pcl::PointNormal> p_n_cloud;

  pcl::fromROSMsg(*init_pointcloud, *cloud);

  //estimate the normals of all points
  float viewpoint[3] = {50,77,70};
  pcl::NormalEstimation<pcl::PointXYZ, pcl::Normal> normObj;   
  normObj.setInputCloud (cloud);         //Set input point cloud          
  //here something with the organized point cloud searching method [organizedneighbor], so use kdtree instead
  pcl::search::KdTree<pcl::PointXYZ>::Ptr Neighbor(new pcl::search::KdTree<pcl::PointXYZ>());  
  normObj.setSearchMethod (Neighbor);    //set search method
  //normObj.setRadiusSearch (0.05);      //set the radius for radius search
  normObj.setKSearch(10);                //set K for K-neighbor search 
  pcl::PointCloud<pcl::Normal>::Ptr normals (new pcl::PointCloud<pcl::Normal>); //Normals point cloud 
  normObj.setViewPoint(viewpoint[0],viewpoint[1],viewpoint[2]);
  std::cout << "[normal_calculator]Computing the normals..."<<std::endl ;
  start_t = clock();
  normObj.compute (*normals); 
  end_t = clock();
  dur_time = (double) ((end_t - start_t)/CLOCKS_PER_SEC);
  std::cout << "[normal_calculator]Normals computing completed."<<std::endl 
            << "[normal_calculator]It takes "<< dur_time <<"s"<<endl ;
  
  //here we compensate the point cloud with normals
  pcl::concatenateFields (*cloud, *normals, p_n_cloud);

  pcl::toROSMsg(p_n_cloud, cloud_with_normals);
  pub.publish (cloud_with_normals);
  std::cout << "[normal_calculator]Published to topic:pointcloud_with_normals"<<std::endl; 
                   
}

int
main (int argc, char** argv)
{
  // Initialize ROS
  ros::init (argc, argv, "normal_calculator");
  ros::NodeHandle nh; 
    
  // tell the master node the information about the ROS subscriber 
  sub = nh.subscribe("init_pointcloud", 1, calculate_normal); 

  // tell the master node the information about the ROS publisher 
  pub = nh.advertise<sensor_msgs::PointCloud2> ("pointcloud_with_normals", 1);
  std::cout<<"[normal_calculator]Ready to calculate normal of point cloud from topic: init_pointcloud"<<endl;
  // Spin
  ros::spin();

  return 0;
}
