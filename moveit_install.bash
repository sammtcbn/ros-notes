#!/bin/bash
# MoveIt
# refer to https://moveit.ros.org/install-moveit2/binary/
function failed()
{
    echo "$*" >&2
    exit 1
}

sudo apt -y install ros-${ROS_DISTRO}-moveit || failed "apt install ros-${ROS_DISTRO}-moveit fail"

# refer to https://wiki.ros.org/rqt/UserGuide/Install/Groovy
sudo apt -y install ros-${ROS_DISTRO}-rqt-moveit || failed "apt install ros-${ROS_DISTRO}-rqt-moveit fail"
