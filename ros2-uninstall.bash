#!/bin/bash

# Foxy
# refer to https://docs.ros.org/en/foxy/Installation/Ubuntu-Install-Debians.html

function failed()
{
    echo "$*" >&2
    exit 1
}

sudo apt -y remove ~nros-${ROS_DISTRO}-* || failed "apt remove fail"
sudo apt -y autoremove || failed "apt autoremove fail"
sudo apt -y autoclean || failed "apt autoclean fail"

sudo rm -f /etc/apt/sources.list.d/ros2.list || exit "delete ros2 source list fail"
sudo apt -y update || failed "apt update fail"
sudo apt -y autoremove || failed "apt autoremove fail"
sudo apt -y upgrade || failed "apt upgrade fail"

# remove "source /opt/ros/foxy/setup.bash" line from ~/.bashrc
sed -i "/source \/opt\/ros\/${ROS_DISTRO}\/setup.bash/d" ~/.bashrc
