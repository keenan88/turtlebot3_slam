## Turtlebot3 Slam / Navigation

### Startup Instructions

1. Run `xhost +local:docker`
2. (Optional) Plugin a Microsoft xbox controller via USB (model 1914, check model with `lsusb`).
3. Open `.env` and decide whether to use autonomous navigation or SLAM
4. Run `docker compose build`
5. Run `docker compose up`. Rviz will appear quickly, Gazebo will take ~30-45s to load.
6. (Optional) Drive the robot around with xbox controller, teleop_twist_keyboard, or RVIZ' _navigate to pose_ button. You will see the map get built in RVIZ.
7. (Optional) To save the generated map: `docker exec -it turtlebot3-slam bash` and `ros2 run nav2_map_server map_saver_cli -f /home/humble_ws/src/turtlebot3_bringup/maps/<your_map_name>`. It will appear in the repo at `turtlebot3_bringup/maps/`.

### Expected Results:

#### Rviz:
![image](https://github.com/user-attachments/assets/00eb79ef-d042-4836-a078-972ec53687d4)

#### Gazebo (Only appears if `USE_HEADLESS=False` in `.env`):
![image](https://github.com/user-attachments/assets/d6bd17cd-6fea-45c0-aa5c-5ed7361a18c7)

### References:

- Nav2 [Getting Started tutorial](https://docs.nav2.org/getting_started/index.html#getting-started)
- `tb3_gazebo_nav_or_slam.launch.py` came from `/opt/ros/humble/share/nav2_bringup/launch/navigation_launch.py` in the `turtlebot3-slam` container
