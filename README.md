# ss24-flightmare-simulation-parametrisation


## Introduction
Flightmare Simulator is flexible modular quadrotor simulator.It contain two main components. A configurable rendering engine built on Unity and a flexible physics engine for dynamics simulation
Flightmare comes with several desirable features
(i). A large multi-modal sensor suite,It includes an interface to extract the 3D point-cloud of the scene
(ii). An api which can stimulate 100s of drone
(iii). Can be intergrated with virtual-reality headset

## Prerequisites
knowledge in Ubuntu and ROS + Python
We have followed the instructions provided on [Flightmare installation guide](https://flightmare.readthedocs.io/en/latest/getting_started/quick_start.html#quick-start):

### Installation Flightmare with ROS 1:

 - ### Requirments
   - **cmake v3.28.4**
   - **gcc v9.40**
   - **openmpi v4.03**
   - **opencv v4.5.5**
   - **Zeromq v4.3.2**
   - **profibus v3.20.3**

 A detailed instruction on install all the above mentioned packages are given [here.](/docs/setup_instructions_with_ros.md).

### Installation Flightmare with python:

 - ### Requirments
   - **cmake v3.28.4**
   - **gcc v9.40**
   - **openmpi v4.03**
   - **opencv v4.5.5**
   - **Zeromq v4.3.2**
   - **tensorflow v1.15**

 A detailed instruction on install all the above mentioned packages are given [here.](/docs/setup_instructions_with_python.md).


# Table of Contents
| Serial Number | Documentation                  | Link to the Docs                  |
|---------------|--------------------------------|-----------------------------------|
| 0             | Introduction                   | [Introduction](README.md)         |
| 1             | Installation                   | [Installation Guide](docs/installation.md)         |
| &emsp;&emsp;1.1           | &emsp;&emsp; Install Unity| [Unity Installation Guide](/docs/unity_installation.md)         |
| &emsp;&emsp;1.2           | &emsp;&emsp; Install RPG flightmare   | [RPG Flightmare Installation Guide](/docs/installation.md)                 |
| 2             | Setup                    | [Setup Instructions](docs/unity_project_creation.md)            |
| &emsp;&emsp;2.1           | &emsp;&emsp; Python Setup| [Setup with Python](/docs/setup_instructions_with_python.md)         |
| &emsp;&emsp;2.2           | &emsp;&emsp; ROS Setup   | [Setup with ROS](/docs/setup_instructions_with_ros.md)                 |
| &emsp;&emsp;2.3           | &emsp;&emsp; Unity Configuration | [Unity Configuration](docs/unity_project_creation.md) |
| 3             | Usage (Python & ROS)           | [Usage](docs/usage_instructions.md)                       |
| 4             | Customization                  | [Customization](docs/unity_project_creation.md)       |
| 5             | FAQ                            | [FAQ](docs/faq.md)                          |
| 6             | Troubleshoot                   | [Troubleshoot](docs/troubleshoot.md)        |
