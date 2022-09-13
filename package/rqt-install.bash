#!/bin/bash
# rqt
# refer to https://docs.ros.org/en/foxy/Concepts/About-RQt.html

function failed()
{
    echo "$*" >&2
    exit 1
}

sudo apt -y install ros-${ROS_DISTRO}-rqt* || failed "fail to install ros-${ROS_DISTRO}-rqt*"
sudo apt -y install ros-${ROS_DISTRO}-rqt-common-plugins || failed "fail to install ros-${ROS_DISTRO}-rqt-common-plugins"
