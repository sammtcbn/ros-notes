#!/bin/bash

# Foxy
# refer to https://docs.ros.org/en/foxy/Installation/Ubuntu-Install-Debians.html

ROS_DISTRO=foxy

function failed()
{
    echo "$*" >&2
    exit 1
}

# system update
sudo apt -y update || failed "apt update fail"
sudo apt -y upgrade || failed "apt upgrade fail"
sudo apt -y autoremove || failed "apt autoremove fail"
sudo apt -y autoclean || failed "apt autoclean fail"

# install prerequisites package
sudo apt -y install curl gnupg2 lsb-release || failed "apt install fail"

# add the ROS2 apt repository to sources list
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg || exit 1

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# install ROS2
sudo apt -y update || failed "apt update fail"
sudo apt -y install ros-${ROS_DISTRO}-desktop || failed "apt install ros-${ROS_DISTRO}-desktop fail"

source /opt/ros/${ROS_DISTRO}/setup.bash
echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc
