#!/bin/bash
# MoveIt
# refer to https://moveit.ros.org/install-moveit2/binary/
# refer to https://wiki.ros.org/rqt/UserGuide/Install/Groovy

function failed()
{
    echo "$*" >&2
    exit 1
}

sudo apt -y install ros-${ROS_DISTRO}-moveit || failed "fail to install ros-${ROS_DISTRO}-moveit"
sudo apt -y install ros-${ROS_DISTRO}-rqt-moveit || failed "fail to install ros-${ROS_DISTRO}-rqt-moveit"
