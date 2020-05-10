#include "ros/ros.h"
#include "car_body_defect_detect/visualize_area.h"

#include <iostream>
#include <string>
#include <sstream>
#include <vector>
#include <thread>
#include <pcl/point_types.h>
#include <pcl/filters/filter.h>
#include <pcl/filters/passthrough.h>
#include <pcl/kdtree/kdtree_flann.h>
#include <pcl/visualization/pcl_visualizer.h>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/common/impl/io.hpp>

using namespace std;

ros::Subscriber sub1;
ros::Subscriber sub2;
ros::Publisher pub1;
pcl::PointCloud<pcl::PointXYZ>::Ptr surface_cloud (new pcl::PointCloud<pcl::PointXYZ>);
std::vector<int> area_all;
std::vector<int> num_of_area;
//pcl::PointCloud<pcl::PointXYZ> p_rectangular ;
int numb = 0;

//visualize the resultant point cloud of area get by this node
bool visualize_area (car_body_defect_detect::visualize_area::Request  &req, 
                     car_body_defect_detect::visualize_area::Response &res )
{
  std::cout<<"[area_get]start to build cloud"<<endl;
  std::cout<<"[area_get]number of points in cloud equals to "<< area_all.size() <<endl;
  /*
  //visualize the number in each area, for debugging
  for(size_t i = 0; i <num_of_area.size();i++)
  {
    std::cout<< num_of_area[i] << endl;
  }
  */
  double r = rand()/double(RAND_MAX) * 255;
  double g = rand()/double(RAND_MAX) * 255;
  double b = rand()/double(RAND_MAX) * 255; 
  int j = 0; 
  size_t area = num_of_area[j];
   //set the colored point cloud
   pcl::PointCloud<pcl::PointXYZRGB>::Ptr colored_area(new pcl::PointCloud<pcl::PointXYZRGB>());
   colored_area->resize(area_all.size());
   for(size_t i = 0; i < area_all.size(); i++)
  {
     colored_area->points[i].x = surface_cloud->points[area_all[i]].x; 
     colored_area->points[i].y = surface_cloud->points[area_all[i]].y;
     colored_area->points[i].z = surface_cloud->points[area_all[i]].z;
     if(i == area)
     {
      //redefine the color of point cloud 
      r = rand()/double(RAND_MAX) * 255;
      g = rand()/double(RAND_MAX) * 255;
      b = rand()/double(RAND_MAX) * 255;
      j++;
      area = area + num_of_area[j];
      //std::cout<< j <<endl;
     }
     colored_area->points[i].r = r;
     colored_area->points[i].g = g;
     colored_area->points[i].b = b;
  }
   std::cout<<"[area_get]start to visualize"<<endl;

   // Visualization
    pcl::visualization::PCLVisualizer::Ptr viewer (new pcl::visualization::PCLVisualizer ("Point Cloud Viewer"));
    viewer->initCameraParameters ();
    viewer->setBackgroundColor (0, 0, 0);

    //std::cout<< r<<" "<<g<<" "<<b<<endl; 
    //pcl::visualization::PointCloudColorHandlerCustom<pcl::PointXYZ> single_color(defect_final, r, g, b);
    pcl::visualization::PointCloudColorHandlerRGBField<pcl::PointXYZRGB> rgb(colored_area);
    viewer->addPointCloud<pcl::PointXYZRGB> (colored_area, rgb, "sample cloud1");
    viewer->addPointCloud<pcl::PointXYZ> (surface_cloud, "sample cloud2");
    viewer->setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 3, "sample cloud1");
    viewer->setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 1, "sample cloud2");
   
    /*
    //add the envelope rectangular into the the point cloud,for debugging (not work well yet)
    for(int l=0;l<j+1;l++)
    {
     for(int i=0+8*l;i<8+8*l;i++)
     {
     	std::cout<<"point = "<<p_rectangular.points[i].x<<" "<<p_rectangular.points[i].y<<" "<<p_rectangular.points[i].z<<" "<<endl;
     	for(int k=i;k<8+8*l;k++)
     	{ 
     	  stringstream ss;
 	      string str; 
	      ss << i << k;
	      ss >> str;
    	  viewer->addLine(p_rectangular.points[i],p_rectangular.points[k],str);
    	}
     }
    }
    */
    viewer->addCoordinateSystem (1.0);
    
  
  //pcl::visualization::CloudViewer viewer1 ("Cluster viewer1");
  //viewer1.showCloud(defect_cloud);  
    
  while (!viewer->wasStopped ())
  {
    viewer->spinOnce (100);
    //std::this_thread::sleep_for(100ms);
  }
} 


//store the surface point cloud data without defect
void
data_store (const sensor_msgs::PointCloud2ConstPtr& surface_cloud_msg)
{
  pcl::fromROSMsg(*surface_cloud_msg, *surface_cloud);     
  std::cout<<"[area_get]Data received form topic: surface_cloud, ready to get a area from this point cloud"<<endl;
}


//get the point cloud area based on the boundary of x limit, y limit
//this method automatically use the stored point cloud data as the data used for search
//this method get a rectangular area defined by x and y boundaries
std::vector<int> rect_area_get(double x_max,double x_min, double y_max, double y_min)
{
   pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_filtered_once (new pcl::PointCloud<pcl::PointXYZ>);
   pcl::PassThrough<pcl::PointXYZ> rect1;
   pcl::PassThrough<pcl::PointXYZ> rect2;
   rect1.setInputCloud(surface_cloud);
   rect1.setFilterLimitsNegative (true); //get the points out of the boundary
   rect1.setFilterFieldName ("x");
   rect1.setFilterLimits (x_min-1, x_max+1);
   std::vector<int> cloud_filtered_once_indice;
   rect1.filter(cloud_filtered_once_indice);
   pcl::copyPointCloud(*surface_cloud,*cloud_filtered_once);
   for(std::size_t i = 0;i < cloud_filtered_once_indice.size();i++)
   {
    cloud_filtered_once->points[cloud_filtered_once_indice[i]].y = y_max + 10;
   }
   std::cout <<"After filtered x the number of points equal to "<< cloud_filtered_once->points.size()<<endl;
   rect2.setInputCloud(cloud_filtered_once);
   rect2.setFilterFieldName ("y");
   rect2.setFilterLimits (y_min-1, y_max+1);
   //pass.setFilterLimitsNegative (true);
   std::vector<int> cloud_filtered_indice;
   rect2.filter(cloud_filtered_indice);
   std::cout <<"After filtered y the number of points equal to " <<cloud_filtered_indice.size()<<endl;

   return cloud_filtered_indice;
}


//get the point cloud area based on the input point cloud, the central position of the area and the scale of this area
//this method automatically use the stored point cloud data as the data used for search
//this method get a circular area defined by center and radius
std::vector<int> radius_area_get(pcl::PointXYZ center, double radius) 
{
  pcl::KdTreeFLANN<pcl::PointXYZ> kdtree;
  kdtree.setInputCloud(surface_cloud);

  std::vector<int> area_indice;
  std::vector<float> area_distance;

  if( kdtree.radiusSearch(center, radius, area_indice, area_distance) > 0 ) 
  {
    std::cout<<"[area_get]Successfully get a area"<<endl;
    return area_indice;
  }
  else
  {
  	std::cout<<"[area_get]Fail to get a area"<<endl;
    std::vector<int> v(1,0);
    return v;
  }
}

void defect_around_get(const sensor_msgs::PointCloud2ConstPtr& defect_point_cloud)
{
   pcl::PointCloud<pcl::PointXYZ> defect_cloud;
   pcl::fromROSMsg(*defect_point_cloud, defect_cloud);
  
   //get the center and scale of this defect 
  double max_x = defect_cloud.points[0].x;
  double min_x = defect_cloud.points[0].x;
  double max_y = defect_cloud.points[0].y;
  double min_y = defect_cloud.points[0].y;
  double max_z = defect_cloud.points[0].z;
  double min_z = defect_cloud.points[0].z;
  double sum_x = 0;
  double sum_y = 0;
  double sum_z = 0;
  int num = defect_cloud.size();
  for(std::size_t i = 0;i < num;i++)
  {
     sum_x = sum_x + defect_cloud.points[i].x;
     sum_y = sum_y + defect_cloud.points[i].y;
     sum_z = sum_z + defect_cloud.points[i].z;
     if(max_x < defect_cloud.points[i].x)
     { max_x = defect_cloud.points[i].x; } 
     if(min_x > defect_cloud.points[i].x)
     { min_x = defect_cloud.points[i].x; } 
     if(max_y < defect_cloud.points[i].y)
     { max_y = defect_cloud.points[i].y; } 
     if(min_y > defect_cloud.points[i].y)
     { min_y = defect_cloud.points[i].y; } 
     if(max_z < defect_cloud.points[i].z)
     { max_z = defect_cloud.points[i].z; } 
     if(min_z > defect_cloud.points[i].z)
     { min_z = defect_cloud.points[i].z; } 
  }
  /*
  pcl::PointXYZ center;
  center.x = sum_x / num;
  center.y = sum_y / num;
  center.z = sum_z / num;
  //set the corner point of the envelope rectangular
  double radius = sqrt(pow((max_x-min_x),2) + pow((max_y-min_y),2) + pow((max_z-min_z),2))/2;
  std::vector<int> area_cloud = radius_area_get(center,radius);
  */
  std::vector<int> area_cloud = rect_area_get(max_x,min_x,max_y,min_y);
  num_of_area.push_back(area_cloud.size());
  std::cout << "The number of points in the area equals to "<< area_cloud.size() << endl;
  area_all.insert(area_all.end(), area_cloud.begin(),area_cloud.end());
  
  pcl::PointCloud<pcl::PointXYZ> defect_area;
  sensor_msgs::PointCloud2 defect_area_msg;
  pcl::copyPointCloud(*surface_cloud,area_cloud,defect_area);
  pcl::toROSMsg(defect_area,defect_area_msg);
  pub1.publish(defect_area_msg);
  //pub1.publish(area_cloud);
  std::cout<<"[area_get]Successfully get an area and publish to topic: cloud_area"<<endl;
} 

int
main (int argc, char** argv)
{ 
  ros::init (argc, argv, "area_get");
  ros::NodeHandle nh; 

  //define the service region_grow
  ros::ServiceServer service = nh.advertiseService("visualize_area", visualize_area);
  std::cout<<"[area_get]Service 'visualize_area' is now ready for visualizing the defect and around area"<<endl;

  //subscribe the topic of point cloud without defect which is detected by region grow algorithm
  sub1 = nh.subscribe("surface_cloud", 1, data_store);
  
  //subscribe the topic of defect point cloud clustered based on euclidean clustering algorithm
  sub2 = nh.subscribe("defect_cloud_clusters", 20, defect_around_get);

  //This node can also be used to get the near area of defect with small scale

  // tell the master node the information about the ROS publisher 
  pub1 = nh.advertise<sensor_msgs::PointCloud2> ("defect_area", 20);

  std::cout<<"[area_get]Ready to detect defect for point cloud from topic: pointcloud_with_normals"<<endl;
  
  // Spin
  ros::Rate loop_rate(10);
  while (ros::ok())
  {
    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}






