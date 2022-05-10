#include <ros/ros.h>
#include<geometry_msgs/Twist.h>

int main(int argc,char **argv)
{
    ros::init(argc,argv,"plumbing_pub");

    ros::NodeHandle n;

    ros::Publisher turtle_vel_pub =n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel",10);

    ros::Rate loop_rate(10);
    geometry_msgs::Twist vel_msg;
    vel_msg.linear.x=4;
    vel_msg.angular.z=1;

    while (ros::ok())
    {
        
        turtle_vel_pub.publish(vel_msg);
        ROS_INFO("velocity:%0.2f,%0.2f",vel_msg.linear.x,vel_msg.angular.z);
        loop_rate.sleep();
    }
    return 0;
    
}