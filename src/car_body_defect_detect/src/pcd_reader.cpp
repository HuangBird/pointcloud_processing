#include "ros/ros.h"
#include "car_body_defect_detect/read_pcd.h"
#include "car_body_defect_detect/visualize_input.h"


#include <iostream>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/common/common_headers.h>
#include <pcl/console/parse.h>
#include <ctime>
#include <pcl/filters/filter.h>
#include <pcl/filters/passthrough.h>
#include <pcl/visualization/pcl_visualizer.h>

using namespace std;

int user_data;
double dur_time;
clock_t start_t ;
clock_t end_t ;
ros::Publisher pub;
pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>);
pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_filtered (new pcl::PointCloud<pcl::PointXYZ>);


bool read_pcd_file (car_body_defect_detect::read_pcd::Request  &req, 
                    car_body_defect_detect::read_pcd::Response &res )
{
  //read the pcd file inputed to load point cloud  
  sensor_msgs::PointCloud2 init_pointcloud;
  start_t = clock();
  std::cout << "[pcd_reader]Loading the points from "<< req.file_name << "..." << std::endl ;
  if (pcl::io::loadPCDFile<pcl::PointXYZ> (req.file_name, *cloud) == -1) //load the file
  {
    PCL_ERROR ("[pcd_reader]Couldn't read file \n");
    return (-1);
  }
  std::vector<int> Nanpoints;
  pcl::removeNaNFromPointCloud(*cloud, *cloud, Nanpoints);
  end_t = clock();
  dur_time = (double) ((end_t - start_t)/CLOCKS_PER_SEC);
  std::cout << "[pcd_reader]Loaded " << cloud->width * cloud->height << " data points from "<< req.file_name << std::endl
            << "[pcd_reader]It takes: " << dur_time <<"s" <<endl;
  
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_filtered_once (new pcl::PointCloud<pcl::PointXYZ>);
  float x_bound;
  float y_bound;
  std::cout << "[pcd_reader]Input the width of boundary of x "<<endl;
  std::cin >> x_bound;
  std::cout << "[pcd_reader]Input the width of boundary of y "<<endl;
  std::cin >> y_bound;  
  x_bound = 50.0 - x_bound;
  y_bound = 77.0 - y_bound;
  
  //removing boundary from the point cloud
  pcl::PassThrough<pcl::PointXYZ> pass1;
  pass1.setInputCloud (cloud);
  pass1.setFilterFieldName ("x");
  pass1.setFilterLimits (-x_bound, x_bound);
  pass1.setFilterLimitsNegative (true); //get the points out of the boundary
  std::vector<int> cloud_filtered_out_indice;
  pass1.filter (cloud_filtered_out_indice);  
  //set the point outside the boundary as nan
  pcl::copyPointCloud(* cloud, *cloud_filtered_once);
  for(std::size_t i = 0;i < cloud_filtered_out_indice.size();i++)
  {
    cloud_filtered_once->points[cloud_filtered_out_indice[i]].y = y_bound + 10;
   
  }
  //then get the points inside the boundary
  pcl::PassThrough<pcl::PointXYZ> pass2;
  pass2.setInputCloud (cloud_filtered_once);
  pass2.setFilterFieldName ("y");
  pass2.setFilterLimits (-y_bound, y_bound);
  //pass.setFilterLimitsNegative (true);
  std::vector<int> cloud_filtered_indice;
  pass2.filter(cloud_filtered_indice);
  pcl::copyPointCloud(*cloud_filtered_once,cloud_filtered_indice,*cloud_filtered);
  std::cout << "[pcd_reader]Removed the boundary" << endl;

  pcl::toROSMsg(*cloud_filtered, init_pointcloud);
  pub.publish (init_pointcloud);
  std::cout << "[pcd_reader]Published to topic:init_pointcloud"<<std::endl;

  return true;        
}

bool pointcloudview (car_body_defect_detect::visualize_input::Request  &req, 
                     car_body_defect_detect::visualize_input::Response &res )
{
    pcl::visualization::PCLVisualizer::Ptr viewer (new pcl::visualization::PCLVisualizer ("Point Cloud Viewer"));
    viewer->initCameraParameters ();

    //std::cout<< r<<" "<<g<<" "<<b<<endl; 
    //pcl::visualization::PointCloudColorHandlerCustom<pcl::PointXYZ> single_color(defect_final, r, g, b);
    viewer->addPointCloud<pcl::PointXYZ> (cloud, "sample cloud");
    viewer->setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 1, "sample cloud");
    viewer->addCoordinateSystem (1.0);
    
    int v1(0);
    viewer->createViewPort(0.0, 0.0, 0.5, 1.0, v1);
    viewer->setBackgroundColor (0, 0, 0, v1);
    viewer->addText("original point cloud", 10, 10, "v1 text", v1);
    pcl::visualization::PointCloudColorHandlerCustom<pcl::PointXYZ> single_color1(cloud, 255, 0, 0);
    viewer->addPointCloud<pcl::PointXYZ> (cloud, single_color1, "sample cloud1",v1);

    int v2(0);
    viewer->createViewPort(0.5, 0.0, 1.0, 1.0, v2);
    viewer->setBackgroundColor (0.3, 0.3, 0.3, v2);
    viewer->addText("cloud filtered boundary", 10, 10, "v2 text", v2);
    pcl::visualization::PointCloudColorHandlerCustom<pcl::PointXYZ> single_color2(cloud_filtered, 0, 255, 0);
    viewer->addPointCloud<pcl::PointXYZ> (cloud_filtered, single_color2, "sample cloud2", v2);
  
  
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

  return true;        
}

int
main (int argc, char** argv)
{
  // Initialize ROS
  ros::init (argc, argv, "pcd_reader");
  ros::NodeHandle nh; 
  
  //Create a ROS service and tell the master node 
  ros::ServiceServer service1 = nh.advertiseService("read_pcd", read_pcd_file);
  std::cout<<"[pcd_reader]Service 'read_pcd' is ready for reading point cloud data from pcd files"<<endl;
  ros::ServiceServer service2 = nh.advertiseService("visualize_input", pointcloudview);
  std::cout<<"[pcd_reader]Service 'visualize_input' is ready for visualization of the input point cloud."<<endl;
  
  std::cout<<"[pcd_reader]Ready to read the pcd file"<<endl;
  std::cout<<"[pcd_reader]ATTENTION: this node should be run in the path where the input file exists."<<endl;
  // tell the master node the information about the ROS publisher 
  pub = nh.advertise<sensor_msgs::PointCloud2> ("init_pointcloud", 1);

  // Spin
  ros::spin();
}