# dshp_b2_slam

部署
可以部署到b2的pc4（Intel Core i7）上，pc4的连接：ssh unitree@192.168.123.164  密码是Unitree0408

获取遥控器的按键状态
参考https://support.unitree.com/home/zh/developer/Get_remote_control_status

离线建图\导航:
unitree_slam/unitree_slam_example/demo_b2
格式：Add Node.Name,X,Y,Z,Yaw:Name,X,Y,Z,Yaw
标准输出后grep即可

测试：
测目标点
unitree_slam/unitree_slam_example/single_nav.cpp

记录routing:
source ~/unitree_ros2/setup.sh 
ros2 topic list # 检查
sudo ./demo_b2 enx98fc84e04d87 | tee routing.txt

巡迹demo:
source ~/unitree_ros2/setup.sh 
ros2 topic list # 检查
sudo ./out_in_stairwell enx98fc84e04d87 routing.2.txt 


=======
工单账号
hanjiatong_1224@163.com
qwer1234
