#!/bin/bash
# MoveIt
# refer to https://moveit.ros.org/install-moveit2/binary/

rosdist=foxy

function failed()
{
    echo "$*" >&2
    exit 1
}

sudo apt -y install ros-${rosdist}-moveit || failed "apt install ros-${rosdist}-moveit fail"

# refer to https://wiki.ros.org/rqt/UserGuide/Install/Groovy
sudo apt -y install ros-${rosdist}-rqt-moveit || failed "apt install ros-${rosdist}-rqt-moveit fail"
