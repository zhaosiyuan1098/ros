#include<ros/ros.h>
#include<geometry_msgs/Twist.h>
#include<std_srvs/Trigger.h>

ros::Publisher turtle_vel_pub;
bool pubCommand =false;
bool commandCallBack(std_srvs::Trigger::Request &qq,std_srvs::Trigger::Response &ww){
    pubCommand=!pubCommand;
    ww.success=true;
    ww.message="success";
}

int main(int argc,char**argv){
    ros::init(argc,argv,"turtle_command_server");

    ros::NodeHandle n;

    ros::ServiceServer command_service=n.advertiseService("/turtle_command",commandCallBack);

    turtle_vel_pub=n.advertise<geometry_msgs::Twist>("turtle1/cmd_vel",10);

    ROS_INFO("ready to go!");

    ros::Rate loop_rate(10);

    while (ros::ok())
    {
        ros::spinOnce();

        if(pubCommand){
            geometry_msgs::Twist vel_msg;
            vel_msg.linear.x=0.5;
            vel_msg.angular.z=0.5;
            turtle_vel_pub.publish(vel_msg);
        }
        loop_rate.sleep();
    }
    return 0;
    
}