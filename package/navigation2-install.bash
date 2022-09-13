#!/bin/bash
function failed()
{
    echo "$*" >&2
    exit 1
}

sudo apt -y install ros-${ROS_DISTRO}-navigation2 || failed "fail to install ros-${ROS_DISTRO}-navigation2"
sudo apt -y install ros-${ROS_DISTRO}-nav2-bringup || failed "fail to install ros-${ROS_DISTRO}-nav2-bringup"
