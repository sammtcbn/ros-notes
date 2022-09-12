#!/bin/bash
# Refer to http://wiki.ros.org/noetic/Installation/Ubuntu
rosdist=foxy

function failed()
{
    echo "$*" >&2
    exit 1
}

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

sudo apt -y install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential || failed "fail to install dependencies for build ROS package"
