#!/bin/bash

source /opt/ros/humble/setup.bash

export TURTLEBOT3_MODEL=waffle
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/opt/ros/humble/share/turtlebot3_gazebo/models

ros2 launch src/turtlebot3_bringup/launch/tb3_gz_nav_or_slam.launch.py headless:=$USE_HEADLESS

bash