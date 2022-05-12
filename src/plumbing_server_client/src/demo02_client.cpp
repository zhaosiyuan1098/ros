#include<ros/ros.h>
#include<plumbing_server_client/mul.h>


int main(int argc,char**argv){
    ros::init(argc,argv,"user");

    ros::NodeHandle n;
    ros::service::waitForService("/multiply");
    ros::ServiceClient client=n.serviceClient<plumbing_server_client::mul>("multiply");
    plumbing_server_client::mul ai;
    ai.request.num1=10;
    ai.request.num2=20;
    
    bool flag=client.call(ai);
    if(flag){
        ROS_INFO("output:%d",ai.response.mul);
    }
    else{
        ROS_INFO("error demo02");
    }
    
}