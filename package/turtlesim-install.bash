#!/bin/bash
# turtlesim
# refer to http://wiki.ros.org/turtlesim

function failed()
{
    echo "$*" >&2
    exit 1
}

sudo apt -y install ros-${ROS_DISTRO}-turtlesim || failed "fail to install ros-${ROS_DISTRO}-turtlesim"
