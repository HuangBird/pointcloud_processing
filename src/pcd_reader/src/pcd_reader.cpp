#include "ros/ros.h"

#include <iostream>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/common/common_headers.h>
#include <pcl/console/parse.h>
#include <ctime>

using namespace std;

int user_data;
double dur_time;
clock_t start_t ;
clock_t end_t ;



int
read_pcd_file (int argc, char** argv )
{


  //input the pcd file to load point cloud
  std::cout << "The file name is:"<<std::endl ;
  std::string file_name ;
  std::cin >> file_name ;
  std::cout << std::endl ;
  
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>); 
  start_t = clock();
  std::cout << "Loading the points..."<<std::endl ;
  if (pcl::io::loadPCDFile<pcl::PointXYZ> (file_name, *cloud) == -1) //* load the file
  {
    PCL_ERROR ("Couldn't read file test_pcd.pcd \n");
    return (-1);
  }
  end_t = clock();
  dur_time = (double) ((end_t - start_t)/CLOCKS_PER_SEC);
  std::cout << "Loaded " << cloud->width * cloud->height << " data points from "<< file_name << std::endl
            <<"It takes: " << dur_time <<"s" <<endl;
  
           
}

int
main (int argc, char** argv)
{
  // Initialize ROS
  ros::init (argc, argv, "pcd_reader");
  ros::NodeHandle nh; 
   
  // Create a ROS publisher for the output point cloud
  ros::Publisher pub = nh.advertise<sensor_msgs::PointCloud2> ("init_pointcloud", 1);

  // Spin
  ros::spinOnce ();
}
