#!/bin/bash

rm -rf devel/ build/ install/
catkin_make --cmake-args -DCMAKE_BUILD_TYPE=Release -DPYTHON_EXECUTABLE=/usr/bin/python3.8 -DPYTHON_INCLUDE_DIR=/usr/include/python3.8 -DPYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.8.so


source devel/setup.bash

#rosrun gazebo_ros spawn_model -urdf -file /workspace/src/spot_ros/spot_description/urdf/spot.urdf.xacro -model MyRobot
