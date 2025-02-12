// Generated by gencpp from file mission_msgs/PayloadDropStatus.msg
// DO NOT EDIT!


#ifndef MISSION_MSGS_MESSAGE_PAYLOADDROPSTATUS_H
#define MISSION_MSGS_MESSAGE_PAYLOADDROPSTATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mission_msgs
{
template <class ContainerAllocator>
struct PayloadDropStatus_
{
  typedef PayloadDropStatus_<ContainerAllocator> Type;

  PayloadDropStatus_()
    : is_ready(false)
    , drone_id(0)
    , stamp()  {
    }
  PayloadDropStatus_(const ContainerAllocator& _alloc)
    : is_ready(false)
    , drone_id(0)
    , stamp()  {
  (void)_alloc;
    }



   typedef uint8_t _is_ready_type;
  _is_ready_type is_ready;

   typedef int32_t _drone_id_type;
  _drone_id_type drone_id;

   typedef ros::Time _stamp_type;
  _stamp_type stamp;





  typedef boost::shared_ptr< ::mission_msgs::PayloadDropStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mission_msgs::PayloadDropStatus_<ContainerAllocator> const> ConstPtr;

}; // struct PayloadDropStatus_

typedef ::mission_msgs::PayloadDropStatus_<std::allocator<void> > PayloadDropStatus;

typedef boost::shared_ptr< ::mission_msgs::PayloadDropStatus > PayloadDropStatusPtr;
typedef boost::shared_ptr< ::mission_msgs::PayloadDropStatus const> PayloadDropStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mission_msgs::PayloadDropStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mission_msgs::PayloadDropStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mission_msgs::PayloadDropStatus_<ContainerAllocator1> & lhs, const ::mission_msgs::PayloadDropStatus_<ContainerAllocator2> & rhs)
{
  return lhs.is_ready == rhs.is_ready &&
    lhs.drone_id == rhs.drone_id &&
    lhs.stamp == rhs.stamp;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mission_msgs::PayloadDropStatus_<ContainerAllocator1> & lhs, const ::mission_msgs::PayloadDropStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mission_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mission_msgs::PayloadDropStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mission_msgs::PayloadDropStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mission_msgs::PayloadDropStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mission_msgs::PayloadDropStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mission_msgs::PayloadDropStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mission_msgs::PayloadDropStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mission_msgs::PayloadDropStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ef1328b167874a2395c4858aac30705e";
  }

  static const char* value(const ::mission_msgs::PayloadDropStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xef1328b167874a23ULL;
  static const uint64_t static_value2 = 0x95c4858aac30705eULL;
};

template<class ContainerAllocator>
struct DataType< ::mission_msgs::PayloadDropStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mission_msgs/PayloadDropStatus";
  }

  static const char* value(const ::mission_msgs::PayloadDropStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mission_msgs::PayloadDropStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool is_ready        # Drone ready status\n"
"int32 drone_id       # Identifier for the drone\n"
"time stamp          # Time when ready status was set\n"
;
  }

  static const char* value(const ::mission_msgs::PayloadDropStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mission_msgs::PayloadDropStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.is_ready);
      stream.next(m.drone_id);
      stream.next(m.stamp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PayloadDropStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mission_msgs::PayloadDropStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mission_msgs::PayloadDropStatus_<ContainerAllocator>& v)
  {
    s << indent << "is_ready: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_ready);
    s << indent << "drone_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.drone_id);
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MISSION_MSGS_MESSAGE_PAYLOADDROPSTATUS_H
