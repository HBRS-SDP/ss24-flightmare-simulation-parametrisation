## Installation
We have followed the instructions provided on [Flightmare installation guide](https://flightmare.readthedocs.io/en/latest/getting_started/quick_start.html#quick-start):

### Step 1: Installing Prerequisite Packages
Flightmare relies on several essential system packages to function optimally. These packages include:

- **CMake**: Flightmare utilizes CMake as a build system generator. CMake simplifies the process of building Flightmare components by automating the generation of build files for various platforms and compilers.

To install CMake, the following commands were run:

```
sudo apt-get update
sudo apt-get install -y cmake
```
Installation was successful and the below messages were observed on the terminal:
```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
cmake is already the newest version (3.22.1-1ubuntu1.22.04.2).
cmake set to manually installed.
0 upgraded, 0 newly installed, 0 to remove and 70 not upgraded.
```
To Verify that CMake is installed correctly, its version is checked:
```
cmake --version
```
An the version was displayed as below:
```
cmake --version 
cmake version 3.16.3

CMake suite maintained and supported by Kitware (kitware.com/cmake).
```

- **GCC Compiler**: Flightmare requires the GNU Compiler Collection (GCC) compiler for compiling source code into executable binaries. GCC is a crucial tool for translating Flightmare's source code into machine-readable instructions.

To install GCC compiler, the following commands were run:

```
sudo apt-get install -y --no-install-recommends build-essential
```
Installation was successful and the below messages were observed on the terminal: 
```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
build-essential is already the newest version (12.9ubuntu3).
build-essential set to manually installed.
0 upgraded, 0 newly installed, 0 to remove and 70 not upgraded.
```
To make sure that GCC compiler is installed correctly, its version is checked:
```
gcc --version
```
An the version was displayed as below:
```
gcc (Ubuntu 9.4.0-1ubuntu1~20.04) 9.4.0
Copyright (C) 2021 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```
- **Python 3**: Flightmare relies on Python 3 for running its scripts and executing various simulation tasks. Python 3 provides a versatile and easy-to-use programming environment, essential for interfacing with Flightmare and performing simulation-related operations.

To install Python 3 along with its dependencies, the following commands were run:
```
sudo apt-get install -y --no-install-recommends    python3
```
Because Python had already been installed, the below messages were observed on the terminal:
```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
python3 is already the newest version (3.10.6-1~22.04).
0 upgraded, 0 newly installed, 0 to remove and 70 not upgraded.
```
- **OpenMPI**: Flightmare leverages OpenMPI for parallel computing tasks. OpenMPI enables Flightmare to efficiently distribute simulation workload across multiple processors or nodes, enhancing performance and scalability.
To install OpenMPI, the following commands were run:
```
sudo apt-get update
sudo apt-get install -y --no-install-recommends \libopenmpi-dev

```
Installation was successful and the below messages were observed on the terminal: 

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
libopenmpi-dev is already the newest version (4.1.2-2ubuntu1).
libopenmpi-dev set to manually installed.
0 upgraded, 0 newly installed, 0 to remove and 70 not upgraded.
```

- **OpenCV**: Flightmare incorporates OpenCV for computer vision tasks within its simulation environment. OpenCV provides robust functionality for image processing and analysis, enabling Flightmare to interact with visual data effectively.

To install OpenCV, the following commands were run:

```
sudo apt-get update
sudo apt-get install -y --no-install-recommends \
   libopencv-dev
```
Installation was successful and the below messages were observed on the terminal: 

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
libopencv-dev is already the newest version (4.5.4+dfsg-9ubuntu4).
libopencv-dev set to manually installed.
0 upgraded, 0 newly installed, 0 to remove and 70 not upgraded.

```
 **ZeroMQ**: Flightmare relies on ZeroMQ development librariesfor message passing between components. 
 To install ZeroMQ development libraries along with their dependencies, the following commands were run:

```
sudo apt-get update
sudo apt-get install -y --no-install-recommends \
   libzmqpp-dev
```
An issue was faced when trying to install ZeroMQ:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
E: Unable to locate package libzmqpp-dev
```
Checked if the package is available under a different name or in a different repository. Searched for packages using the following command:

```
apt-cache search libzmq
```
The following messages were returned on the terminal:

```
libjeromq-java - Java implementation of the ZeroMQ messaging library
libzmq-ffi-perl - version agnostic Perl bindings for zeromq using ffi
libzmq-java - ZeroMQ Java bindings (jzmq)
libzmq-java-doc - Documentation for ZeroMQ Java bindings (jzmq)
libzmq-jni - ZeroMQ Java bindings (jzmq)
libzmq3-dev - lightweight messaging kernel (development files)
libzmq5 - lightweight messaging kernel (shared library)
```
From the messages above, it could be inferred that the package ***libzmq3-dev*** provides development files for the ZeroMQ messaging library, which was what was needed. It was installed running the following command:
```
sudo apt-get install libzmq3-dev
```
The package ***libzmq3-dev*** was installed successfully and the following meaasges were returned:
```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
libzmq3-dev is already the newest version (4.3.4-2).
libzmq3-dev set to manually installed.
0 upgraded, 0 newly installed, 0 to remove and 70 not upgraded.
```
### Step 2: Installing ROS
We have followed the instruction given on (ROS WIKI)[/http://wiki.ros.org/noetic/Installation/Ubuntu].

-**Setup your sources.list**

Setup your computer to accept software from packages.ros.org. 
```
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
```




