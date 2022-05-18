#include<ros/ros.h>
#include<turtlesim/Spawn.h>

int main(int argc,char**argv){
    ros::init(argc,argv,"turtle_spawn");

    ros::NodeHandle n;

    ros::service::waitForService("/spawn");

    ros::ServiceClient add_turtle=n.serviceClient<turtlesim::Spawn>("/spawn");

    turtlesim::Spawn srv;
    if (argc!=4)
    {
        ROS_INFO("submitted parameter error ");
        return 1;
    }
    else{
        ROS_INFO("spawn request generate ...");
        srv.request.x=atoi(argv[1]);
        srv.request.y=atoi(argv[2]);
        srv.request.name=argv[3];
    }

    add_turtle.call(srv);
    ROS_INFO("name:%s",srv.response.name.c_str());
    ROS_INFO("place:[%f,%f]",srv.request.x,srv.request.y);
    
}