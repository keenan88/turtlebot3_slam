#!/bin/bash

source /opt/ros/humble/setup.bash

colcon build --packages-select turtlebot3_joystick turtlebot3_bringup
source install/setup.bash

ros2 launch turtlebot3_bringup joystick.launch.py

bash