#!/bin/bash
function failed()
{
    echo "$*" >&2
    exit 1
}

sudo apt -y install ros-${ROS_DISTRO}-rviz2 || failed "apt install ros-${ROS_DISTRO}-rviz2 fail"
