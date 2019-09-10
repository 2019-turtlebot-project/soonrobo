// Generated by gencpp from file newmode/msg_detect.msg
// DO NOT EDIT!


#ifndef NEWMODE_MESSAGE_MSG_DETECT_H
#define NEWMODE_MESSAGE_MSG_DETECT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace newmode
{
template <class ContainerAllocator>
struct msg_detect_
{
  typedef msg_detect_<ContainerAllocator> Type;

  msg_detect_()
    : mode()
    , bar(false)
    , traffic_light(false)  {
    }
  msg_detect_(const ContainerAllocator& _alloc)
    : mode(_alloc)
    , bar(false)
    , traffic_light(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _mode_type;
  _mode_type mode;

   typedef uint8_t _bar_type;
  _bar_type bar;

   typedef uint8_t _traffic_light_type;
  _traffic_light_type traffic_light;





  typedef boost::shared_ptr< ::newmode::msg_detect_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::newmode::msg_detect_<ContainerAllocator> const> ConstPtr;

}; // struct msg_detect_

typedef ::newmode::msg_detect_<std::allocator<void> > msg_detect;

typedef boost::shared_ptr< ::newmode::msg_detect > msg_detectPtr;
typedef boost::shared_ptr< ::newmode::msg_detect const> msg_detectConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::newmode::msg_detect_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::newmode::msg_detect_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace newmode

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'newmode': ['/home/ri/soonrobo/src/newmode/msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::newmode::msg_detect_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::newmode::msg_detect_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::newmode::msg_detect_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::newmode::msg_detect_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::newmode::msg_detect_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::newmode::msg_detect_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::newmode::msg_detect_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f3e619251811de3393b11ebe9613655a";
  }

  static const char* value(const ::newmode::msg_detect_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf3e619251811de33ULL;
  static const uint64_t static_value2 = 0x93b11ebe9613655aULL;
};

template<class ContainerAllocator>
struct DataType< ::newmode::msg_detect_<ContainerAllocator> >
{
  static const char* value()
  {
    return "newmode/msg_detect";
  }

  static const char* value(const ::newmode::msg_detect_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::newmode::msg_detect_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string mode\n\
bool bar\n\
bool traffic_light\n\
";
  }

  static const char* value(const ::newmode::msg_detect_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::newmode::msg_detect_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mode);
      stream.next(m.bar);
      stream.next(m.traffic_light);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct msg_detect_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::newmode::msg_detect_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::newmode::msg_detect_<ContainerAllocator>& v)
  {
    s << indent << "mode: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.mode);
    s << indent << "bar: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.bar);
    s << indent << "traffic_light: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.traffic_light);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NEWMODE_MESSAGE_MSG_DETECT_H