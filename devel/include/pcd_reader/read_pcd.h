// Generated by gencpp from file pcd_reader/read_pcd.msg
// DO NOT EDIT!


#ifndef PCD_READER_MESSAGE_READ_PCD_H
#define PCD_READER_MESSAGE_READ_PCD_H

#include <ros/service_traits.h>


#include <pcd_reader/read_pcdRequest.h>
#include <pcd_reader/read_pcdResponse.h>


namespace pcd_reader
{

struct read_pcd
{

typedef read_pcdRequest Request;
typedef read_pcdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct read_pcd
} // namespace pcd_reader


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pcd_reader::read_pcd > {
  static const char* value()
  {
    return "2415261c9605b9f38867ffbbe495fc04";
  }

  static const char* value(const ::pcd_reader::read_pcd&) { return value(); }
};

template<>
struct DataType< ::pcd_reader::read_pcd > {
  static const char* value()
  {
    return "pcd_reader/read_pcd";
  }

  static const char* value(const ::pcd_reader::read_pcd&) { return value(); }
};


// service_traits::MD5Sum< ::pcd_reader::read_pcdRequest> should match 
// service_traits::MD5Sum< ::pcd_reader::read_pcd > 
template<>
struct MD5Sum< ::pcd_reader::read_pcdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pcd_reader::read_pcd >::value();
  }
  static const char* value(const ::pcd_reader::read_pcdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pcd_reader::read_pcdRequest> should match 
// service_traits::DataType< ::pcd_reader::read_pcd > 
template<>
struct DataType< ::pcd_reader::read_pcdRequest>
{
  static const char* value()
  {
    return DataType< ::pcd_reader::read_pcd >::value();
  }
  static const char* value(const ::pcd_reader::read_pcdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pcd_reader::read_pcdResponse> should match 
// service_traits::MD5Sum< ::pcd_reader::read_pcd > 
template<>
struct MD5Sum< ::pcd_reader::read_pcdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pcd_reader::read_pcd >::value();
  }
  static const char* value(const ::pcd_reader::read_pcdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pcd_reader::read_pcdResponse> should match 
// service_traits::DataType< ::pcd_reader::read_pcd > 
template<>
struct DataType< ::pcd_reader::read_pcdResponse>
{
  static const char* value()
  {
    return DataType< ::pcd_reader::read_pcd >::value();
  }
  static const char* value(const ::pcd_reader::read_pcdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PCD_READER_MESSAGE_READ_PCD_H
