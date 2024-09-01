#!/bin/bash

catkin build flightros -DBUILD_SAMPLES:=ON
roslaunch flightros rotors_gazebo.launch
