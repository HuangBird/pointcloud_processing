#include "ros/ros.h"
#include "car_body_defect_detect/region_grow.h"

#include <iostream>
#include <vector>
#include <pcl/point_types.h>
#include <pcl/io/pcd_io.h>
#include <pcl/search/search.h>
#include <pcl/search/kdtree.h>
#include <pcl/features/normal_3d.h>
#include <pcl/segmentation/region_growing.h>
#include <pcl/visualization/cloud_viewer.h>
#include <pcl/visualization/pcl_visualizer.h>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/common/impl/io.hpp>

using namespace std;

int user_data;
double dur_time;
clock_t start_t ;
clock_t end_t ;
ros::Subscriber sub;
ros::Publisher pub;
pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>);
pcl::PointCloud<pcl::Normal>::Ptr normals (new pcl::PointCloud<pcl::Normal>);

void
data_store (const sensor_msgs::PointCloud2ConstPtr& pointcloud_with_normals)
{
 
  pcl::PointCloud<pcl::PointNormal> cloud_normals;
  //First, receive data from topic and store it here
  //Second, convert the PointNormal data to pointXYZ data and Normal data
  pcl::fromROSMsg(*pointcloud_with_normals, cloud_normals);   
  
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

  pcl::PointCloud <pcl::PointXYZRGB>::Ptr colored_cloud = reg.getColoredCloud ();
   
  pcl::PointCloud <pcl::PointXYZ>::Ptr normal_cloud(new pcl::PointCloud <pcl::PointXYZ>());
  pcl::PointCloud <pcl::PointXYZ>::Ptr defect_cloud(new pcl::PointCloud <pcl::PointXYZ>());
  pcl::copyPointCloud(*cloud,clusters[0].indices,*normal_cloud);
  
  //Gather all the defect point into one cluster 
  std::vector<int> defect_clusters;
     //indices are of the same type as std::vector<int>
  for(std::size_t i = 1;i < clusters.size ();i++)
  {
    for(std::size_t count = 0;count < clusters[i].indices.size ();count++)
      {
        defect_clusters.push_back(clusters[i].indices[count]);
        //put the indice in the cluster to the end of the defect_cluster
      }
  }
  pcl::copyPointCloud(*cloud,defect_clusters,*defect_cloud);
  
  //Publish the defect point cloud to the topic
  sensor_msgs::PointCloud2 defect_point_cloud;
  pcl::toROSMsg(*defect_cloud, defect_point_cloud);
  pub.publish(defect_point_cloud);
  std::cout << "[region_grower]Published to topic:defect_cloud"<<std::endl;
}


int
main (int argc, char** argv)
{ 
  ros::init (argc, argv, "region_growing");
  ros::NodeHandle nh; 

  //define the service region_grow
  ros::ServiceServer service = nh.advertiseService("region_grow", region_grow);
  
  // tell the master node the information about the ROS subscriber 
  sub = nh.subscribe("pointcloud_with_normals", 1, data_store);

  // tell the master node the information about the ROS publisher 
  pub = nh.advertise<sensor_msgs::PointCloud2> ("defect_cloud", 1);
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
