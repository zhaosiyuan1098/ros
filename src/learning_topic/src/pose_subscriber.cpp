#include<ros/ros.h>
#include<turtlesim/Pose.h>
void poseCallBack(const turtlesim::Pose::ConstPtr&ppose){
    ROS_INFO("pose:%0.6f,%0.6f",ppose->x,ppose->y);
}
int main(int argc, char **argv){
    ros::init(argc,argv,"pose_subscriber");

    ros::NodeHandle n;
    
    ros::Subscriber pose_sub =n.subscribe("/turtle1/pose",10,poseCallBack);

    ros::spin();
}