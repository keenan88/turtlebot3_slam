## Turtlebot3 Slam / Navigation

### Startup Instructions

1. Run `xhost +local:docker`
2. (Optional) Plugin a Microsoft Xbox controller via USB (model 1914, check model with `lsusb`).
3. In `.env`, set `NAV_OR_SLAM` to `NAV` or `SLAM`.
4. Run `docker compose build`
5. Run `docker compose up`. Rviz2 will appear quickly, Gazebo will take ~30-45s to load.
6. For SLAM:  
   1. Drive the robot around with either:  
      - Xbox controller (hold down right bumper, move right joystick)  
      - `teleop_twist_keyboard`, or  
      - Rviz2's _navigate to pose_ button
   2. Save the generated map:  
      - `docker exec -it turtlebot3-slam bash`  
      - Run `ros2 run nav2_map_server map_saver_cli -f /home/humble_ws/src/turtlebot3_bringup/maps/<your_map_name>`.  
        The map will appear in the repo at `turtlebot3_bringup/maps/`.
7. For Nav2:
   1. Set the robot's initial position with the `2D pose estimate` button in Rviz2.
   2. Use Rviz2's `Nav2 Goal` button to send a goal position and watch the robot move to it.


### Expected Results:

#### Gazebo (Only appears if `USE_HEADLESS=False` in `.env`):
![image](https://github.com/user-attachments/assets/d6bd17cd-6fea-45c0-aa5c-5ed7361a18c7)

#### (SLAM) Rviz2 (map gets built as robot drives around):
![image](https://github.com/user-attachments/assets/00eb79ef-d042-4836-a078-972ec53687d4)

#### (Nav) Rviz2 (includes static published map):

![image](https://github.com/user-attachments/assets/1bbc7bfa-3da1-4c5e-b091-4a613d45533c)

#### (Nav) Rviz2 (Robot moving to desired pose):

![image](https://github.com/user-attachments/assets/241620b3-2924-4c45-b236-274f6226dadf)


### References:

- Nav2 [Getting Started tutorial](https://docs.nav2.org/getting_started/index.html#getting-started)
- `tb3_gazebo_nav_or_slam.launch.py` came from `/opt/ros/humble/share/nav2_bringup/launch/navigation_launch.py` in the `turtlebot3-slam` container
