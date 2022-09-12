#!/bin/bash
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

sudo apt -y install ros-${rosdist}-rviz2 || failed "apt install ros-${rosdist}-rviz2 fail"
