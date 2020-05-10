#include "ros/ros.h"
#include "car_body_defect_detect/visualize_area.h"
#include "car_body_defect_detect/visualize_defect.h"
#include "car_body_defect_detect/visualize_region_grow.h"
#include "car_body_defect_detect/view_pointcloud.h"

#include <iostream>
#include <vector>
#include <thread>
#include <pcl/point_types.h>
#include <pcl/visualization/pcl_visualizer.h>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/common/impl/io.hpp>

ros::Subscriber sub1;
ros::Subscriber sub2;
ros::Subscriber sub3;
ros::Subscriber sub4;
pcl::visualization::PCLVisualizer::Ptr viewer (new pcl::visualization::PCLVisualizer ("Point Cloud Viewer"));
pcl::PointCloud<pcl::PointXYZ>::Ptr defect_final_colored(new pcl::PointCloud<pcl::PointXYZRGB>());






int
main (int argc, char** argv)
{ 
  ros::init (argc, argv, "visualizer");
  ros::NodeHandle nh; 

  //define the service region_grow
  ros::ServiceServer service1 = nh.advertiseService("visualize_area", visualize_area);
  std::cout<<"[visualizer]Service 'visualize_area' is now ready for visualizing the defect and around area"<<endl;

  ros::ServiceServer service2 = nh.advertiseService("visualize_defect", visualize_defect);
  std::cout<<"[euclidean_cluster]Service 'visualize_defect' now is ready for visualization of defect after clustering."<<endl;

  ros::ServiceServer service3 = nh.advertiseService("visualize_region_grow", visualize_region_grow);
  std::cout<<"[region_grower]Service 'visualize_region_grow' is now ready for visualize the result of region grow."<<endl;

  ros::ServiceServer service4 = nh.advertiseService("view_pointcloud", pointcloudview);
  std::cout<<"[pcd_reader]Service 'view_pointcloud' is ready for visualization of the input point cloud."<<endl;

  sub1 = nh.subscribe("init_pointcloud", 1, init_store); 

  sub2 = nh.subscribe("pointcloud_normals", 1, normal_store);

  //subscribe the topic of point cloud without defect which is detected by region grow algorithm
  sub3 = nh.subscribe("surface_cloud", 1, surface_store);
  
  sub4 = nh.subscribe("defect_cloud",1,defect_all_store);

  //subscribe the topic of defect point cloud clustered based on euclidean clustering algorithm
  sub5 = nh.subscribe("defect_cloud_clusters", 20, defect_cluster_store);

  //This node can also be used to get the near area of defect with small scale

  // tell the master node the information about the ROS publisher 
  //pub1 = nh.advertise<sensor_msgs::PointCloud2> ("cloud_area", 20);

  std::cout<<"[visualizer]Ready to visualize all the results"<<endl;
  
  



  // Spin
  ros::Rate loop_rate(10);
  while (ros::ok())
  {
    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}