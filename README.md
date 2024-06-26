# ss24-flightmare-simulation-parametrisation


## Introduction
Flightmare Simulator is .......... a description to be added ....

## Prerequisites
OS ---> Linux 20.04 or lower (irrespective of the os creating a conda environment is Highly recommanded)
Other dependencies dependencies :-
TensorFlow 1.15



## User Stories

| User Story ID | Title                           | Priority | Estimate | As a | I want to | So that |
| ------------- | ------------------------------- | -------- | -------- | ---- | --------- | ------- |
| 1             | [Title of User Story]           | [High/Med/Low] | [Estimate in points/hours/days] | User | easily install Flightmare Simulator | I can start using it for my simulations without hassle |
| 2             | [Title of User Story]           | [High/Med/Low] | [Estimate in points/hours/days] | User | configure the simulator settings quickly | I can tailor the simulation environment to my needs |
| 3             | [Title of User Story]           | [High/Med/Low] | [Estimate in points/hours/days] | Developer | contribute to the project | I can improve the simulator or fix bugs |
| 4             | [Title of User Story]           | [High/Med/Low] | [Estimate in points/hours/days] | Researcher | access comprehensive documentation | I can understand how to use advanced features for my research |
| 5             | [Title of User Story]           | [High/Med/Low] | [Estimate in points/hours/days] | Administrator | troubleshoot common issues | I can ensure smooth operation of the simulator for users |

## Installation
We have followed the instructions provided on [Flightmare installation guide](https://flightmare.readthedocs.io/en/latest/getting_started/quick_start.html#quick-start):

### Step 1: Installing Packages
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
cmake version 3.22.1

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
gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
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

### Step 2: Setting Up Python Environment

It is a good idea to use a virtual conda environment to make sure packages from different projects do not interfere with each other. The following steps are followed:

#### 2.1 Installing conda
First, conda is installed using the command below after downloading the ***Anaconda3-2024.02-1-Linux-x86_64.sh*** file from the [Anaconda website](https://www.anaconda.com/download/success):

```
bash Anaconda3-2024.02-1-Linux-x86_64.sh
```
As a result, the following message was shown on the terminal:
```

Welcome to Anaconda3 2024.02-1

In order to continue the installation process, please review the license
agreement.
Please, press ENTER to continue
```
Then pressing enter long user agreement terms were displayed:

```
END USER LICENSE AGREEMENT

This Anaconda End User License Agreement ("EULA") ..............................
..............................
..............................
Do you accept the license terms? [yes|no]
>>> 
Please answer 'yes' or 'no':'

```
By entering ***yes***, and confirming the installation location, the instalation starts and finally this message is returned:
```
done
installation finished.
```
#### 2.2 Activating conda
After installing ***conda***, it has to be activated:
```
source /home/am90/anaconda3/bin/activate
```
consequently, the terminal command line would change as below after activating the ***conda***:
```
(base) am90@am90:~$
```
First,  the python version installed is checked:

```
python3 --version
```
It was:
```
Python 3.10.12
```

#### 2.3 Creating an environment
Then a conda environment could be created:

```
conda create --name conda_env python=3.10
```
The ***conda*** environment is then created and it can be activated or deactivated using the commands below:

```
conda activate conda_env
conda deactivate
```

### Step 3: Installing Flightmare simulator
#### 3.1 Downloading the Flightmare project
Primarily, the ***Flightmare*** project must be cloned from the [Flightmare Project Repository](https://github.com/uzh-rpg/flightmare) on Github to a local directory:

```
git clone https://github.com/uzh-rpg/flightmare.git

```
And the below messages are returened:
```
Cloning into 'flightmare'...
remote: Enumerating objects: 4208, done.
remote: Counting objects: 100% (161/161), done.
remote: Compressing objects: 100% (101/101), done.
remote: Total 4208 (delta 73), reused 112 (delta 49), pack-reused 4047
Receiving objects: 100% (4208/4208), 96.86 MiB | 6.28 MiB/s, done.
Resolving deltas: 100% (1928/1928), done.
```
#### 3.2 Adding ***FLIGHTMARE_PATH*** environment variable to the ***.bashrc*** file
- First, ***FLIGHTMARE_PATH*** environment variable to the end of the ***.bashrc*** file.
```
echo 'export FLIGHTMARE_PATH="/home/am90/flightmare"' >> ~/.bashrc
```
- Then the ***.bashrc*** file is executed as below:
```
source ~/.bashrc
```

#### 3.3 Installing dependencies: 

- ***Tensorflow*** is installed as below:
```
pip install tensorflow
```
It was successfully installed:
```
Successfully installed absl-py-2.1.0 astunparse-1.6.3 flatbuffers-24.3.25 gast-0.5.4 google-pasta-0.2.0 grpcio-1.63.0 h5py-3.11.0 keras-3.3.3 libclang-18.1.1 markdown-3.6 markdown-it-py-3.0.0 mdurl-0.1.2 ml-dtypes-0.3.2 namex-0.0.8 opt-einsum-3.3.0 optree-0.11.0 protobuf-4.25.3 rich-13.7.1 tensorboard-2.16.2 tensorboard-data-server-0.7.2 tensorflow-2.16.1 tensorflow-io-gcs-filesystem-0.37.0 wrapt-1.16.0
```
- ***scikit*** is installed as below:
```
pip install scikit-build
```
It was successfully installed:
```
Installing collected packages: scikit-build
Successfully installed scikit-build-0.17.6
```
#### 3.3 Installing Flightmare (flightlib): 
```
cd flightmare/flightlib
pip install .
```
Running the commands above to install the Flightmare, Some errors were encountered that hindered the installation process, the most important of which was:

```

ERROR: Could not build wheels for flightgym, which is required to install pyproject.toml-based projects
```


##### What was tried to resolve the issues:
###### Troublshoot 1:
Trying to do the installation through bypassing any potential issues related to cached files during the installation process. The command below disables caching, ensuring that the package is fetched directly from the source.
```
pip install . --no-cache-dir
```
However, the same error still remained. 

###### Troublshoot 2:
Ensuring that ***pip*** and ***setuptools*** are up to date by running the command below:




```
```

```
```
```
```
```
```
```
```
```
```
```
















