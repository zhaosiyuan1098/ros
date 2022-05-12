// Generated by gencpp from file plumbing_server_client/mul.msg
// DO NOT EDIT!


#ifndef PLUMBING_SERVER_CLIENT_MESSAGE_MUL_H
#define PLUMBING_SERVER_CLIENT_MESSAGE_MUL_H

#include <ros/service_traits.h>


#include <plumbing_server_client/mulRequest.h>
#include <plumbing_server_client/mulResponse.h>


namespace plumbing_server_client
{

struct mul
{

typedef mulRequest Request;
typedef mulResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct mul
} // namespace plumbing_server_client


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::plumbing_server_client::mul > {
  static const char* value()
  {
    return "61cc73773f0784551098a676ab62dc95";
  }

  static const char* value(const ::plumbing_server_client::mul&) { return value(); }
};

template<>
struct DataType< ::plumbing_server_client::mul > {
  static const char* value()
  {
    return "plumbing_server_client/mul";
  }

  static const char* value(const ::plumbing_server_client::mul&) { return value(); }
};


// service_traits::MD5Sum< ::plumbing_server_client::mulRequest> should match
// service_traits::MD5Sum< ::plumbing_server_client::mul >
template<>
struct MD5Sum< ::plumbing_server_client::mulRequest>
{
  static const char* value()
  {
    return MD5Sum< ::plumbing_server_client::mul >::value();
  }
  static const char* value(const ::plumbing_server_client::mulRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::plumbing_server_client::mulRequest> should match
// service_traits::DataType< ::plumbing_server_client::mul >
template<>
struct DataType< ::plumbing_server_client::mulRequest>
{
  static const char* value()
  {
    return DataType< ::plumbing_server_client::mul >::value();
  }
  static const char* value(const ::plumbing_server_client::mulRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::plumbing_server_client::mulResponse> should match
// service_traits::MD5Sum< ::plumbing_server_client::mul >
template<>
struct MD5Sum< ::plumbing_server_client::mulResponse>
{
  static const char* value()
  {
    return MD5Sum< ::plumbing_server_client::mul >::value();
  }
  static const char* value(const ::plumbing_server_client::mulResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::plumbing_server_client::mulResponse> should match
// service_traits::DataType< ::plumbing_server_client::mul >
template<>
struct DataType< ::plumbing_server_client::mulResponse>
{
  static const char* value()
  {
    return DataType< ::plumbing_server_client::mul >::value();
  }
  static const char* value(const ::plumbing_server_client::mulResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PLUMBING_SERVER_CLIENT_MESSAGE_MUL_H