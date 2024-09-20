#!/bin/bash

source /opt/ros/humble/setup.bash

ros2 launch src/turtlebot3_bringup/launch/tb3_gz_nav_or_slam.launch.py headless:=$USE_HEADLESS

bash