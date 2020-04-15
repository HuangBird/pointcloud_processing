// Generated by gencpp from file car_body_defect_detect/plane_model.msg
// DO NOT EDIT!


#ifndef CAR_BODY_DEFECT_DETECT_MESSAGE_PLANE_MODEL_H
#define CAR_BODY_DEFECT_DETECT_MESSAGE_PLANE_MODEL_H

#include <ros/service_traits.h>


#include <car_body_defect_detect/plane_modelRequest.h>
#include <car_body_defect_detect/plane_modelResponse.h>


namespace car_body_defect_detect
{

struct plane_model
{

typedef plane_modelRequest Request;
typedef plane_modelResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct plane_model
} // namespace car_body_defect_detect


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::car_body_defect_detect::plane_model > {
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::car_body_defect_detect::plane_model&) { return value(); }
};

template<>
struct DataType< ::car_body_defect_detect::plane_model > {
  static const char* value()
  {
    return "car_body_defect_detect/plane_model";
  }

  static const char* value(const ::car_body_defect_detect::plane_model&) { return value(); }
};


// service_traits::MD5Sum< ::car_body_defect_detect::plane_modelRequest> should match 
// service_traits::MD5Sum< ::car_body_defect_detect::plane_model > 
template<>
struct MD5Sum< ::car_body_defect_detect::plane_modelRequest>
{
  static const char* value()
  {
    return MD5Sum< ::car_body_defect_detect::plane_model >::value();
  }
  static const char* value(const ::car_body_defect_detect::plane_modelRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::car_body_defect_detect::plane_modelRequest> should match 
// service_traits::DataType< ::car_body_defect_detect::plane_model > 
template<>
struct DataType< ::car_body_defect_detect::plane_modelRequest>
{
  static const char* value()
  {
    return DataType< ::car_body_defect_detect::plane_model >::value();
  }
  static const char* value(const ::car_body_defect_detect::plane_modelRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::car_body_defect_detect::plane_modelResponse> should match 
// service_traits::MD5Sum< ::car_body_defect_detect::plane_model > 
template<>
struct MD5Sum< ::car_body_defect_detect::plane_modelResponse>
{
  static const char* value()
  {
    return MD5Sum< ::car_body_defect_detect::plane_model >::value();
  }
  static const char* value(const ::car_body_defect_detect::plane_modelResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::car_body_defect_detect::plane_modelResponse> should match 
// service_traits::DataType< ::car_body_defect_detect::plane_model > 
template<>
struct DataType< ::car_body_defect_detect::plane_modelResponse>
{
  static const char* value()
  {
    return DataType< ::car_body_defect_detect::plane_model >::value();
  }
  static const char* value(const ::car_body_defect_detect::plane_modelResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAR_BODY_DEFECT_DETECT_MESSAGE_PLANE_MODEL_H
