## Turtlebot3 Slam / Navigation

### Startup Instructions

1. Run `xhost +local:docker`
2. Open `.env` and decide whether to use autonomous navigation or SLAM
3. Run `docker compose build`
4. Run `docker compose up`

### Expected Results:

#### Rviz:
![image](https://github.com/user-attachments/assets/00eb79ef-d042-4836-a078-972ec53687d4)

#### Gazebo (Only appears if `USE_HEADLESS=False` in `.env`):
![image](https://github.com/user-attachments/assets/d6bd17cd-6fea-45c0-aa5c-5ed7361a18c7)

### References:

- Nav2 [Getting Started tutorial](https://docs.nav2.org/getting_started/index.html#getting-started)
- `tb3_gazebo_nav_or_slam.launch.py` came from `/opt/ros/humble/share/nav2_bringup/launch/navigation_launch.py` in the `turtlebot3-slam` container
