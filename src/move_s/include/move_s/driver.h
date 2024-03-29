#ifndef DRIVER_H
#define DRIVER_H

#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <geometry_msgs/Twist.h>
#include <string>

class Driver
{
public:
    Driver(ros::Publisher* _vel_pub);
    void ldsCallback(const sensor_msgs::LaserScan::ConstPtr& scan);
    void publishVelocity();

private:
    geometry_msgs::Twist selfDrive(const sensor_msgs::LaserScan::ConstPtr& scan);

    ros::Publisher* pubVelo;
    geometry_msgs::Twist velMsg;
    sensor_msgs::LaserScan curScan;
};

#endif // TB3DRIVER_H
