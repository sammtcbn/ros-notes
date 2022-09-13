#!/bin/bash
function failed()
{
    echo "$*" >&2
    exit 1
}

# rqt
# refer to https://docs.ros.org/en/foxy/Concepts/About-RQt.html
sudo apt -y install ros-${ROS_DISTRO}-rqt* || failed "fail to install ros-${ROS_DISTRO}-rqt*"
sudo apt -y install ros-${ROS_DISTRO}-rqt-common-plugins || failed "fail to install ros-${ROS_DISTRO}-rqt-common-plugins"

# rviz2
sudo apt -y install ros-${ROS_DISTRO}-rviz2 || failed "fail to install ros-${ROS_DISTRO}-rviz2"

# MoveIt
# refer to https://moveit.ros.org/install-moveit2/binary/
sudo apt -y install ros-${ROS_DISTRO}-moveit || failed "fail to install ros-${ROS_DISTRO}-moveit"
# refer to https://wiki.ros.org/rqt/UserGuide/Install/Groovy
sudo apt -y install ros-${ROS_DISTRO}-rqt-moveit || failed "fail to install ros-${ROS_DISTRO}-rqt-moveit"

# turtlesim
# refer to http://wiki.ros.org/turtlesim
sudo apt -y install ros-${ROS_DISTRO}-turtlesim || failed "fail to install ros-${ROS_DISTRO}-turtlesim"

# Gazebo
sudo apt -y install ros-${ROS_DISTRO}-gazebo-* || failed "fail to install ros-${ROS_DISTRO}-gazebo-*"
