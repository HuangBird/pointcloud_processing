#include "ros/ros.h"
#include "pcd_reader/read_pcd.h"


#include <iostream>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/common/common_headers.h>
#include <pcl/console/parse.h>
#include <ctime>
#include <pcl/filters/filter.h>

using namespace std;

int user_data;
double dur_time;
clock_t start_t ;
clock_t end_t ;
ros::Publisher pub;


bool read_pcd_file (pcd_reader::read_pcd::Request  &req, 
                    pcd_reader::read_pcd::Response &res )
{
  //read the pcd file inputed to load point cloud  
  pcl::PointCloud<pcl::PointXYZ> cloud; 
  sensor_msgs::PointCloud2 init_pointcloud;
  start_t = clock();
  std::cout << "[pcd_reader]Loading the points from "<< req.file_name << "..." << std::endl ;
  if (pcl::io::loadPCDFile<pcl::PointXYZ> (req.file_name, cloud) == -1) //load the file
  {
    PCL_ERROR ("[pcd_reader]Couldn't read file \n");
    return (-1);
  }
  std::vector<int> Nanpoints;
  pcl::removeNaNFromPointCloud(cloud, cloud, Nanpoints);
  end_t = clock();
  dur_time = (double) ((end_t - start_t)/CLOCKS_PER_SEC);
  std::cout << "[pcd_reader]Loaded " << cloud.width * cloud.height << " data points from "<< req.file_name << std::endl
            <<"[pcd_reader]It takes: " << dur_time <<"s" <<endl;
  pcl::toROSMsg(cloud, init_pointcloud);
  pub.publish (init_pointcloud);
  std::cout << "[pcd_reader]Published to topic:init_pointcloud"<<std::endl;

  return true;        
}

int
main (int argc, char** argv)
{
  // Initialize ROS
  ros::init (argc, argv, "pcd_reader");
  ros::NodeHandle nh; 
  
  //Create a ROS service and tell the master node 
  ros::ServiceServer service = nh.advertiseService("read_pcd", read_pcd_file);
  std::cout<<"[pcd_reader]Ready to read the pcd file"<<endl;
  std::cout<<"[pcd_reader]ATTENTION: this node should be run in the path where the input file exists."<<endl;
  // tell the master node the information about the ROS publisher 
  pub = nh.advertise<sensor_msgs::PointCloud2> ("init_pointcloud", 1);

  // Spin
  ros::spin();
}