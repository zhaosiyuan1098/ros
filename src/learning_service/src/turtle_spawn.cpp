#include<ros/ros.h>
#include<turtlesim/Spawn.h>

int main(int argc,char**argv){
    ros::init(argc,argv,"turtle_spawn");

    ros::NodeHandle n;

    ros::service::waitForService("/spawn");
    ros::ServiceClient add_turtle=n.serviceClient<turtlesim::Spawn>("/spawn");

    turtlesim::Spawn srv;
    srv.request.x=2.0;
    srv.request.y=3.0;
    srv.request.name="turtle2";

    add_turtle.call(srv);
    ROS_INFO("%s",srv.response.name.c_str());
    
}