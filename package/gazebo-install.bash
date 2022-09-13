#!/bin/bash
# Gazebo

function failed()
{
    echo "$*" >&2
    exit 1
}

sudo apt -y install ros-${ROS_DISTRO}-gazebo-* || failed "fail to install ros-${ROS_DISTRO}-gazebo-*"
