#!/bin/bash
rosdist=foxy

function failed()
{
    echo "$*" >&2
    exit 1
}

sudo apt -y install ros-${rosdist}-rviz2 || failed "apt install ros-${rosdist}-rviz2 fail"
