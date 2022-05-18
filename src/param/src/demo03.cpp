#include<ros/ros.h>>

int main(int argc,char **argv){
    ros::init (argc,argv,"set_param");

    ros::NodeHandle nh;

    nh.setParam("brand","ABB");
    nh.setParam("height",1);

    ros::param::set("color","black");
    ros::param::set("year",2022);

    double height =nh.param("height",0.8);
    double height2 =nh.param("height2",0.8);
    ROS_INFO("height:%.2f",height);
    ROS_INFO("height2:%.2f",height2);
}