#!/bin/bash

. /opt/ros/humble/setup.sh && colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release && \
source install/setup.bash && \
ros2 launch rm_vision_bringup vision_bringup.launch.py && \
ros2 launch rosbridge_server rosbridge_websocket_launch.xml
