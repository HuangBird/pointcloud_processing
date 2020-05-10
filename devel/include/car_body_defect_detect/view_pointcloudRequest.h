// Generated by gencpp from file car_body_defect_detect/view_pointcloudRequest.msg
// DO NOT EDIT!


#ifndef CAR_BODY_DEFECT_DETECT_MESSAGE_VIEW_POINTCLOUDREQUEST_H
#define CAR_BODY_DEFECT_DETECT_MESSAGE_VIEW_POINTCLOUDREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace car_body_defect_detect
{
template <class ContainerAllocator>
struct view_pointcloudRequest_
{
  typedef view_pointcloudRequest_<ContainerAllocator> Type;

  view_pointcloudRequest_()
    {
    }
  view_pointcloudRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator> const> ConstPtr;

}; // struct view_pointcloudRequest_

typedef ::car_body_defect_detect::view_pointcloudRequest_<std::allocator<void> > view_pointcloudRequest;

typedef boost::shared_ptr< ::car_body_defect_detect::view_pointcloudRequest > view_pointcloudRequestPtr;
typedef boost::shared_ptr< ::car_body_defect_detect::view_pointcloudRequest const> view_pointcloudRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace car_body_defect_detect

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "car_body_defect_detect/view_pointcloudRequest";
  }

  static const char* value(const ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct view_pointcloudRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::car_body_defect_detect::view_pointcloudRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // CAR_BODY_DEFECT_DETECT_MESSAGE_VIEW_POINTCLOUDREQUEST_H
