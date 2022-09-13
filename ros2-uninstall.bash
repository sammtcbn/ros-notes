#!/bin/bash

# Foxy
# refer to https://docs.ros.org/en/foxy/Installation/Ubuntu-Install-Debians.html

rosdist=foxy

function failed()
{
    echo "$*" >&2
    exit 1
}

sudo apt -y remove ~nros-${rosdist}-* || failed "apt remove fail"
sudo apt -y autoremove || failed "apt autoremove fail"
sudo apt -y autoclean || failed "apt autoclean fail"

sudo rm -f /etc/apt/sources.list.d/ros2.list || exit "delete ros2 source list fail"
sudo apt -y update || failed "apt update fail"
sudo apt -y autoremove || failed "apt autoremove fail"
sudo apt -y upgrade || failed "apt upgrade fail"
