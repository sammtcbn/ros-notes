#!/bin/bash
# refer to https://github.com/ros2/rmw_fastrtps
rosdist=foxy
source /opt/ros/${rosdist}/setup.bash
export RMW_IMPLEMENTATION=rmw_fastrtps_cpp
RMW_IMPLEMENTATION=rmw_fastrtps_cpp ros2 run demo_nodes_cpp talker
