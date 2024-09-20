Tutorial used to setup docker contaner: https://docs.nav2.org/getting_started/index.html#getting-started

tb3_gazebo_nav_or_slam.launch.py came from /opt/ros/humble/share/nav2_bringup/launch/navigation_launch.py in the turtlebot3-slam container

To launch with slam, open tb3_gazebo_nav_or_slam.launch.py, and change declare_slam_cmd -> default value to true. This will cause SLAM to control map -> odom TF (instead of AMCL) and publish on the map topi (instead of a map server).



