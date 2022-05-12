#include<ros/ros.h>
#include<plumbing_server_client/mul.h>

bool MulFun(plumbing_server_client::mul::Request &request,plumbing_server_client::mul::Response &response)
{
	// 处理请求	
    int num1=request.num1;
    int num2=request.num2;
	ROS_INFO("收到的请求数据：num1 = %d，num2 = %d", num1, num2);
	// 组织响应
    response.mul=request.num1*request.num2;
	ROS_INFO("相乘结果：mul = %d", response.mul );
	return true;
}
int main(int argc,char **argv){
    ros::init(argc,argv,"multiply");

    ros::NodeHandle n;

    ros::ServiceServer server =n.advertiseService("multiply",MulFun);
    ROS_INFO("server start success!");
    ros::spin();
    return 0;
}
