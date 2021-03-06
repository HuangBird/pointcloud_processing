// Generated by gencpp from file car_body_defect_detect/visualize_defect.msg
// DO NOT EDIT!


#ifndef CAR_BODY_DEFECT_DETECT_MESSAGE_VISUALIZE_DEFECT_H
#define CAR_BODY_DEFECT_DETECT_MESSAGE_VISUALIZE_DEFECT_H

#include <ros/service_traits.h>


#include <car_body_defect_detect/visualize_defectRequest.h>
#include <car_body_defect_detect/visualize_defectResponse.h>


namespace car_body_defect_detect
{

struct visualize_defect
{

typedef visualize_defectRequest Request;
typedef visualize_defectResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct visualize_defect
} // namespace car_body_defect_detect


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::car_body_defect_detect::visualize_defect > {
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::car_body_defect_detect::visualize_defect&) { return value(); }
};

template<>
struct DataType< ::car_body_defect_detect::visualize_defect > {
  static const char* value()
  {
    return "car_body_defect_detect/visualize_defect";
  }

  static const char* value(const ::car_body_defect_detect::visualize_defect&) { return value(); }
};


// service_traits::MD5Sum< ::car_body_defect_detect::visualize_defectRequest> should match 
// service_traits::MD5Sum< ::car_body_defect_detect::visualize_defect > 
template<>
struct MD5Sum< ::car_body_defect_detect::visualize_defectRequest>
{
  static const char* value()
  {
    return MD5Sum< ::car_body_defect_detect::visualize_defect >::value();
  }
  static const char* value(const ::car_body_defect_detect::visualize_defectRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::car_body_defect_detect::visualize_defectRequest> should match 
// service_traits::DataType< ::car_body_defect_detect::visualize_defect > 
template<>
struct DataType< ::car_body_defect_detect::visualize_defectRequest>
{
  static const char* value()
  {
    return DataType< ::car_body_defect_detect::visualize_defect >::value();
  }
  static const char* value(const ::car_body_defect_detect::visualize_defectRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::car_body_defect_detect::visualize_defectResponse> should match 
// service_traits::MD5Sum< ::car_body_defect_detect::visualize_defect > 
template<>
struct MD5Sum< ::car_body_defect_detect::visualize_defectResponse>
{
  static const char* value()
  {
    return MD5Sum< ::car_body_defect_detect::visualize_defect >::value();
  }
  static const char* value(const ::car_body_defect_detect::visualize_defectResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::car_body_defect_detect::visualize_defectResponse> should match 
// service_traits::DataType< ::car_body_defect_detect::visualize_defect > 
template<>
struct DataType< ::car_body_defect_detect::visualize_defectResponse>
{
  static const char* value()
  {
    return DataType< ::car_body_defect_detect::visualize_defect >::value();
  }
  static const char* value(const ::car_body_defect_detect::visualize_defectResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAR_BODY_DEFECT_DETECT_MESSAGE_VISUALIZE_DEFECT_H
