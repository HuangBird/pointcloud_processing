Author: Pengsheng Huang pengsheng_sjtu@163.com
Content: A group of ROS packages to achieve all the functions needed in the process of processing  
         the point cloud for a white car body defects detecting and processing.

Version: ROS/kinetic
Complier:catkin

Note: For my graduating design.

Important files:
ROS nodes:
[1]pcd_reader
address:./devel/lib/car_body_defect_detect/pcd_reader
function:This node read the pcd file through its service:read_pcd, and publish the point cloud to the topic: inital_pointcloud
[2]normal_calculator
address:./devel/lib/car_body_defect_detect/normal_calculator
function:This node calculate the normal for point cloud from topic: inital_pointcloud by default parameter(because I can't and don't think we should get the best parameter through trying, the default parameter is good enough for me, by now at least). The parameter can be changed in the source code.
[3]region_growing
address:./devel/lib/car_body_defect_detect/region_growing
function:This node do the point cloud clustering by region grow algorithm based on the normal of points. The point cloud with normals is from topic:pointcloud_with_normals

Source code:
[1]./src/car_body_defect_detect/src/pcd_reader.cpp:
source code for the node: <pcd_reader>
[2]./src/car_body_defect_detect/src/normal_calculator.cpp:
source code for the node: <normal_calculator>
[3]./src/car_body_defect_detect/src/region_growing.cpp
source code for the node: <region_growing>

Service defined:
[1]read_pcd:
address: ./src/car_body_defect_detect/srv/read_pcd.srv
input parameter: the name of the pcd file which you want to read
function:This service is offered by pcd_reader, in this service we can input the name of the file needed to be read and then the service will read the file and publish the point cloud in the file to the topic:init_pointcloud
[2]region_grow
address:address: ./src/car_body_defect_detect/srv/region_grow.srv
input parameter: nothing
function:This service is offered by region_growing, by calling this service it do the point cloud clustering by region grow algorithm based on the normal of points for the point cloud with normals is from topic:pointcloud_with_normals
