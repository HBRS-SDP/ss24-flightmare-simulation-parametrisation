#!/bin/bash

catkin build flightros -DBUILD_SAMPLES:=ON
roslaunch flightros rotors_gazebo.launch
gnome-terminal -- rostopic pub /hummingbird/wind_speed rotors_comm/WindSpeed "{header: {stamp: now}, velocity: {x: 0.0, y: 0.0, z: 0.0}}" -r 10