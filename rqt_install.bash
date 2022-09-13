#!/bin/bash
# refer to https://docs.ros.org/en/foxy/Concepts/About-RQt.html
function failed()
{
    echo "$*" >&2
    exit 1
}

sudo apt -y install ros-${ROS_DISTRO}-rqt* || failed "apt install ros-${ROS_DISTRO}-rqt* fail"
sudo apt -y install ros-${ROS_DISTRO}-rqt-common-plugins || failed "apt install ros-${ROS_DISTRO}-rqt-common-plugins fail"
