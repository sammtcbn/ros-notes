#!/bin/bash
# refer to https://docs.ros.org/en/foxy/Concepts/About-RQt.html
rosdist=foxy

function failed()
{
    echo "$*" >&2
    exit 1
}

sudo apt -y install ros-${rosdist}-rqt* || failed "apt install ros-${rosdist}-rqt* fail"
sudo apt -y install ros-${rosdist}-rqt-common-plugins || failed "apt install ros-${rosdist}-rqt-common-plugins fail"
