#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <geometry_msgs/Twist.h>
#include <functional>
#include "move_s/driver.h"

Driver* driver;

void ldsCallback(const sensor_msgs::LaserScan::ConstPtr& scan)
{
    ROS_INFO("receive range size = %d, first = %.3f",
             (int)scan->ranges.size(), scan->ranges[0]);
    ROS_INFO("receive inten size = %d, first = %.3f",
             (int)scan->intensities.size(), scan->intensities[0]);
    driver->ldsCallback(scan);
}

int main(int argc, char **argv)
{
	// 노드 네임 초기화
	ros::init(argc, argv, "move_s");
	// Node handle declaration for communication with ROS system
	ros::NodeHandle nh;
	
	// create publisher: 
    ros::Publisher velopub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 100);
	// set publishing frequency
	ros::Rate loop_rate(10);

    // 반드시 subscriber가 돌아가기 전에 생성
    driver = new Driver(&velopub);
	
	// create subscriber
    ros::Subscriber ldssub = nh.subscribe("scan", 1, ldsCallback);

    while(ros::ok())
    {
        driver->publishVelocity();
        ros::spinOnce();
        loop_rate.sleep();
    }
	return 0;
}

