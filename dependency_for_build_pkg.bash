#!/bin/bash
# Refer to http://wiki.ros.org/noetic/Installation/Ubuntu

function failed()
{
    echo "$*" >&2
    exit 1
}

sudo apt -y install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential || failed "fail to install dependencies for build ROS package"
