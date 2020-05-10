#include "ros/ros.h"
#include "car_body_defect_detect/plane_model.h"

#include <iostream>
#include <vector>
#include <pcl/point_types.h>
#include <pcl/io/pcd_io.h>
#include <pcl/search/search.h>
#include <pcl/search/kdtree.h>
#include <pcl/features/normal_3d.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/sample_consensus/method_types.h>
#include <pcl/sample_consensus/model_types.h>
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
ros::Publisher pub;
size_t num;
//pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>);
//pcl::PointCloud<pcl::Normal>::Ptr normals (new pcl::PointCloud<pcl::Normal>);
/*
void
data_store (const sensor_msgs::PointCloud2ConstPtr& pointcloud_with_normals)
{
 
  pcl::PointCloud<pcl::PointNormal> cloud_normals;
  //First, receive data from topic and store it here
  //Second, convert the PointNormal data to pointXYZ data and Normal data
  pcl::fromROSMsg(*pointcloud_with_normals, cloud_normals);   
  
  num = cloud_normals.points.size();
  cloud->points.resize(num) ;
  normals->points.resize(num) ;
  
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
  
  std::cout<<"[plane_segmentation]Data received form topic: pointcloud_with_normals, ready to do the normal based region grow clustering"<<endl;
}
*/

void plane_judge(const sensor_msgs::PointCloud2ConstPtr& defect_area_msg)
{
  pcl::PointCloud<pcl::PointXYZ>::Ptr defect_area (new pcl::PointCloud<pcl::PointXYZ>);
  pcl::fromROSMsg(*defect_area_msg, *defect_area);
  
  pcl::ModelCoefficients::Ptr coefficients (new pcl::ModelCoefficients);
  pcl::PointIndices::Ptr inliers (new pcl::PointIndices);
  // Create the segmentation object
  pcl::SACSegmentation<pcl::PointXYZ> seg;
  seg.setOptimizeCoefficients (true);
  seg.setModelType (pcl::SACMODEL_PLANE);
  seg.setMethodType (pcl::SAC_RANSAC);
  
  //Set the threshold for the 
  std::cout << "[plane_segmentation]Set the threshold for the distance tolerance(mm)"<<std::endl ;
  float dis_tolerance ;
  std::cin >> dis_tolerance ;
  
  seg.setDistanceThreshold (dis_tolerance);
  seg.setInputCloud (defect_area);
  std::cout << "[plane_segmentation]Estimating plane and check points..."<<std::endl ;
  start_t = clock();
  seg.segment (*inliers, *coefficients);
  end_t = clock();
  dur_time = (double) ((end_t - start_t)/CLOCKS_PER_SEC);
  std::cout << "[plane_segmentation]The number of inliers is: "<< inliers->indices.size()<<endl;
  float flag_inliers = static_cast<float>(inliers->indices.size()) / static_cast<float>(defect_area->points.size());
  std::cout << "[plane_segmentation]The ratio of inliers is: "<< flag_inliers <<endl;

}

std::vector<int> v;

bool plane_segmentation (car_body_defect_detect::plane_model::Request  &req, 
                         car_body_defect_detect::plane_model::Response &res )
{
  
  //check if the point cloud is small enough for this method
  /*
  if(cloud->points.size() > 1000)
    {
      std::cout << "Too much points input, not suitable for this method"
      return false;
    }
    */

  //generate some data for testing
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>);

  // Fill in the cloud data
  cloud->width  = 100;
  cloud->height = 1;
  num = cloud->width * cloud->height;
  cloud->points.resize (num);
  
  // Generate the data
  for (std::size_t i = 0; i < cloud->points.size (); ++i)
  {
    cloud->points[i].x = rand () / (RAND_MAX + 1.0f);
    cloud->points[i].y = rand () / (RAND_MAX + 1.0f);
    cloud->points[i].z = 1.0 + (rand () / (RAND_MAX + 1.0f))/10;
  }

  // Set a few outliers
  cloud->points[0].z = 1.11;
  cloud->points[6].z = 1.16;
  cloud->points[10].z = 1.11;
  cloud->points[25].z = 1.2;

  //Do the cluster when the service is called, data is the last data published to topic: pointcloud_with_normals
  pcl::ModelCoefficients::Ptr coefficients (new pcl::ModelCoefficients);
  pcl::PointIndices::Ptr inliers (new pcl::PointIndices);
  // Create the segmentation object
  pcl::SACSegmentation<pcl::PointXYZ> seg;
  // Optional
  seg.setOptimizeCoefficients (true);
  // Mandatory
  seg.setModelType (pcl::SACMODEL_PLANE);
  seg.setMethodType (pcl::SAC_RANSAC);
  
  //Set the threshold for the tolerance in the distance between points and the plane
  std::cout << "[plane_segmentation]Set the threshold for the distance tolerance(mm)"<<std::endl ;
  float dis_tolerance ;
  std::cin >> dis_tolerance ;
  
  seg.setDistanceThreshold (dis_tolerance);
  
  seg.setInputCloud (cloud);
  std::cout << "[plane_segmentation]Estimating plane and check points..."<<std::endl ;
  start_t = clock();
  seg.segment (*inliers, *coefficients);
  end_t = clock();
  dur_time = (double) ((end_t - start_t)/CLOCKS_PER_SEC);
  std::cout << "[plane_segmentation]Plane segmentation completed."<<std::endl 
            << "[plane_segmentation]It takes "<< dur_time <<"s"<<endl ;
  
  
  pcl::PointCloud <pcl::PointXYZ>::Ptr normal_cloud (new pcl::PointCloud <pcl::PointXYZ>());
  pcl::PointCloud <pcl::PointXYZ>::Ptr defect_cloud (new pcl::PointCloud <pcl::PointXYZ>());
  pcl::PointCloud <pcl::PointXYZRGB>::Ptr colored_cloud (new pcl::PointCloud <pcl::PointXYZRGB>());
  pcl::copyPointCloud(*cloud,inliers->indices,*normal_cloud);
  
  //Get the outliers 
  int flags[num];
  std::cout << num <<endl;
  for(std::size_t i = 0; i < num; i++)
  {
    flags[i] = 1;
  }  //define a flag and initialize it

  for(std::size_t j = 0;j < inliers->indices.size ();j++)
  {
    flags[inliers->indices[j]] = 0;
  } //set all the inliers position to 0 

  defect_cloud->points.resize(num - inliers->indices.size ());
  colored_cloud->points.resize(num);
  int count = 0;
  std::cout<<"define count"<<endl;
  for(std::size_t i = 0; i < num; i++)
  {  
    if(flags[i] == 1)
      {
        defect_cloud->points[count].x = cloud->points[i].x;
        defect_cloud->points[count].y = cloud->points[i].y;
        defect_cloud->points[count].z = cloud->points[i].z;
        colored_cloud->points[i].x = cloud->points[i].x;
        colored_cloud->points[i].y = cloud->points[i].y;
        colored_cloud->points[i].z = cloud->points[i].z;
        colored_cloud->points[i].r = 0;
        colored_cloud->points[i].g = 255;
        colored_cloud->points[i].b = 0;
        count++ ;
      }
      else
      {
        colored_cloud->points[i].x = cloud->points[i].x;
        colored_cloud->points[i].y = cloud->points[i].y;
        colored_cloud->points[i].z = cloud->points[i].z;
        colored_cloud->points[i].r = 255;
        colored_cloud->points[i].g = 0;
        colored_cloud->points[i].b = 0;
      }

  } //putting the outliers through mark into one point cloud
 
  //visualize the point cloud for a test


    pcl::visualization::PCLVisualizer::Ptr viewer (new pcl::visualization::PCLVisualizer ("Point Cloud Viewer"));
    viewer->initCameraParameters ();
    viewer->setBackgroundColor (0, 0, 0);

    //std::cout<< r<<" "<<g<<" "<<b<<endl; 
    //pcl::visualization::PointCloudColorHandlerCustom<pcl::PointXYZ> single_color(defect_final, r, g, b);
    pcl::visualization::PointCloudColorHandlerRGBField<pcl::PointXYZRGB> rgb(colored_cloud);
    viewer->addPointCloud<pcl::PointXYZRGB> (colored_cloud, rgb, "sample cloud");
    viewer->setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 1, "sample cloud");
    viewer->addCoordinateSystem (1.0);
    viewer->addPlane(*coefficients,"Estimatin Plane");

  std::cout<<"[euclidean_cluster]Finish the final euclidean cluster"<<endl;
  
   while (!viewer->wasStopped ())
  {
    viewer->spinOnce (100);
    //std::this_thread::sleep_for(100ms);
  }


  //Publish the defect point cloud to the topic
  sensor_msgs::PointCloud2 defect_point_cloud;
  pcl::toROSMsg(*defect_cloud, defect_point_cloud);
  pub.publish(defect_point_cloud);
  std::cout << "[plane_segmentation]Published to topic:defect_cloud"<<std::endl;
}


int
main (int argc, char** argv)
{ 
  ros::init (argc, argv, "plane_model");
  ros::NodeHandle nh; 

  //define the service region_grow
  ros::ServiceServer service = nh.advertiseService("plane_segmentation", plane_segmentation);
  
  sub1=nh.subscribe("defect_area",20, plane_judge);
  // tell the master node the information about the ROS subscriber 
  //sub = nh.subscribe("pointcloud_with_normals", 1, data_store);

  // tell the master node the information about the ROS publisher 
  pub = nh.advertise<sensor_msgs::PointCloud2> ("defect_cloud", 1);
  std::cout<<"[plane_segmentation]Ready to detect defect for point cloud from topic: pointcloud_with_normals"<<endl;
  
  // Spin
  ros::Rate loop_rate(10);
  while (ros::ok())
  {
    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}
