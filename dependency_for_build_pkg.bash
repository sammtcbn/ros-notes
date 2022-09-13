#!/bin/bash
# Refer to http://wiki.ros.org/noetic/Installation/Ubuntu

# rosdep refer to http://wiki.ros.org/rosdep

function failed()
{
    echo "$*" >&2
    exit 1
}

sudo apt -y install git || failed "fail to install git"
sudo apt -y install python3-argcomplete || failed "fail to install python3-argcomplete"
sudo apt -y install python3-pip || failed "fail to install python3-pip"
sudo apt -y install build-essential || failed "fail to install build-essential"
sudo apt -y install python3-vcstool || failed "fail to install python3-vcstool"
sudo apt -y install python3-rosdep || failed "failed to install python3-rosdep"
sudo apt -y install python3-rosinstall || failed "failed to install python3-rosinstall"
sudo apt -y install python3-rosinstall-generator || failed "fail to install python3-rosinstall-generator"
sudo apt -y install python3-wstool || failed "fail to install python3-wstool"
sudo apt -y install python3-colcon-common-extensions || failed "fail to install python3-colcon-common-extensions"

# Initialize rosdep
sudo rosdep init || failed "fail to rosdep init"
rosdep update || failed "fail to rosdep update"

echo "done"
