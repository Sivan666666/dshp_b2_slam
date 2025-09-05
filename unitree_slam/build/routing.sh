#!/usr/bin
source ~/unitree_ros2/setup.sh
ros2 topic list
mkdir -p routing_data
timestmp=`date "+%d%H%M"`
touch routing_data/${timestmp}.txt
#sudo ./demo_b2 enx98fc84e04d87 | tee routing_data/${timestmp}.txt
routing_txt=routing_data/routing.${timestmp}.txt
grep 'Node.Name'  routing_data/${timestmp}.txt > ${routing_txt}
sed 's/Add Node.Name,X,Y,Z,Yaw://' -i ${routing_txt}
