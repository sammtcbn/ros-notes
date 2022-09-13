#!/bin/bash
function failed()
{
    echo "$*" >&2
    exit 1
}

sudo apt -y install ros-${ROS_DISTRO}-cartographer || failed "fail to install ros-${ROS_DISTRO}-cartographer"
sudo apt -y install ros-${ROS_DISTRO}-cartographer-ros || failed "fail to install ros-${ROS_DISTRO}-cartographer-ros"
