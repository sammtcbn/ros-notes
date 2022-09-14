#!/bin/bash
mkdir sample || exit 1
cd sample || exit 1
git clone https://github.com/ros2/examples || exit 1
git clone https://github.com/ros2/demos || exit 1
echo done
