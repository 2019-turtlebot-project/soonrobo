#include "move_s/driver.h"

Driver::Driver(ros::Publisher* _vel_pub)
{
	pubVelo = _vel_pub;
	velMsg.linear.x = 0; velMsg.linear.y = 0; velMsg.linear.z = 0;
	velMsg.angular.x = 0; velMsg.angular.y = 0; velMsg.angular.z = 0;
}

void Driver::ldsCallback(const sensor_msgs::LaserScan::ConstPtr& scan)
{
	// copy before processing for data time sync
	velMsg = selfDrive(scan);
	publishVelocity();
}

geometry_msgs::Twist Driver::selfDrive(const sensor_msgs::LaserScan::ConstPtr& scan)
{
	geometry_msgs::Twist vel;
	vel.linear.x = 0.2; vel.linear.y = 0; vel.linear.z = 0;
	vel.angular.x = 0; vel.angular.y = 0; vel.angular.z = 0;

	if(scan->ranges[0]<0.3 && scan->ranges[359]<0.3)
	 vel.linear.x = 0.0; vel.angular.z= 2.0;
	ROS_INFO("selfDrive first = %.3f, %.3f", scan->ranges[0], scan->ranges[359]);
	return vel;
}

void Driver::publishVelocity()
{
	pubVelo->publish(velMsg);
}
