#!/bin/bash
# refer to https://github.com/ros2/rmw_fastrtps
source /opt/ros/${ROS_DISTRO}/setup.bash || exit 1
export RMW_IMPLEMENTATION=rmw_fastrtps_cpp
RMW_IMPLEMENTATION=rmw_fastrtps_cpp ros2 run demo_nodes_cpp talker
