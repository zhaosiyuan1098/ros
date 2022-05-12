// Generated by gencpp from file plumbing_server_client/mulResponse.msg
// DO NOT EDIT!


#ifndef PLUMBING_SERVER_CLIENT_MESSAGE_MULRESPONSE_H
#define PLUMBING_SERVER_CLIENT_MESSAGE_MULRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace plumbing_server_client
{
template <class ContainerAllocator>
struct mulResponse_
{
  typedef mulResponse_<ContainerAllocator> Type;

  mulResponse_()
    : mul(0)  {
    }
  mulResponse_(const ContainerAllocator& _alloc)
    : mul(0)  {
  (void)_alloc;
    }



   typedef int32_t _mul_type;
  _mul_type mul;





  typedef boost::shared_ptr< ::plumbing_server_client::mulResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::plumbing_server_client::mulResponse_<ContainerAllocator> const> ConstPtr;

}; // struct mulResponse_

typedef ::plumbing_server_client::mulResponse_<std::allocator<void> > mulResponse;

typedef boost::shared_ptr< ::plumbing_server_client::mulResponse > mulResponsePtr;
typedef boost::shared_ptr< ::plumbing_server_client::mulResponse const> mulResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::plumbing_server_client::mulResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::plumbing_server_client::mulResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::plumbing_server_client::mulResponse_<ContainerAllocator1> & lhs, const ::plumbing_server_client::mulResponse_<ContainerAllocator2> & rhs)
{
  return lhs.mul == rhs.mul;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::plumbing_server_client::mulResponse_<ContainerAllocator1> & lhs, const ::plumbing_server_client::mulResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace plumbing_server_client

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::plumbing_server_client::mulResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::plumbing_server_client::mulResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plumbing_server_client::mulResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plumbing_server_client::mulResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plumbing_server_client::mulResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plumbing_server_client::mulResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::plumbing_server_client::mulResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4bafcf6c13588fa07212221e468aa671";
  }

  static const char* value(const ::plumbing_server_client::mulResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4bafcf6c13588fa0ULL;
  static const uint64_t static_value2 = 0x7212221e468aa671ULL;
};

template<class ContainerAllocator>
struct DataType< ::plumbing_server_client::mulResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "plumbing_server_client/mulResponse";
  }

  static const char* value(const ::plumbing_server_client::mulResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::plumbing_server_client::mulResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 mul\n"
;
  }

  static const char* value(const ::plumbing_server_client::mulResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::plumbing_server_client::mulResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mul);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct mulResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::plumbing_server_client::mulResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::plumbing_server_client::mulResponse_<ContainerAllocator>& v)
  {
    s << indent << "mul: ";
    Printer<int32_t>::stream(s, indent + "  ", v.mul);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLUMBING_SERVER_CLIENT_MESSAGE_MULRESPONSE_H
