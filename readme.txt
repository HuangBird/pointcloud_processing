Author: Pengsheng Huang pengsheng_sjtu@163.com
Content: A group of ROS packages to achieve all the functions needed in the process of processing  
         the point cloud for a white car body defects detecting and processing.

Version: ROS/kinetic
Complier:catkin

Note: For my graduating design.

Important files:
ROS nodes:
[1]pcd_reader
address:./devel/lib/pcd_reader/pcd_reader
function:This node read the pcd file through its service:read_pcd, and publish the point cloud readed and the type of the point cloud (e.g. with normals? with color? etc...) to the topic: inital_pointcloud
Source code:
[1]./src/pcd_reader/src/pcd_reader.cpp:
source code for the node: <pcd_reader>

Service defined:
[1]read_pcd:
address: ./src/pcd_reader/srv/read_pcd.srv
function:This service is offered by pcd_reader, in this service we can input the name of the file needed to be read and then the service will read the file and publish the point cloud in the file to the topic:init_pointcloud

