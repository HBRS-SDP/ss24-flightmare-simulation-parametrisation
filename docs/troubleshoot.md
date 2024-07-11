# Troubleshooting Guide

This guide provides solutions to common issues you might encounter while setting up and running the Flightmare simulator.

## Common Issues

### Lengthy Build Time for opencv-python Wheel:
**Symptom**: When trying to __install Flightmare__ using the commands below:

```
cd flightmare/flightlib
pip install .
```
Installing `OpenCV` within a Docker image took significantly longer than expected:

```
Building wheel for opencv-python (pyproject.toml) ... -
```
**Possible Cause**: 
Two problems were faced as listed below:

1. The installation process repeatedly downloads multiple versions of the `gym` package, indicating possible dependency resolution problems or version incompatibilities.

2. The installation encountered dependency conflicts between required versions of packages, which might have caused the installation process to take too long and not complete successfully.



**Solution**: 
- Running the `opencv-python` installation command with the `--verbose` flag to monitor progress closely which resloved the issue:

```
sudo pip install opencv-python --verbose
```

**Image for reference**:
![Example Error](images/wheel_flightgym.jpeg) 



### Error Running Drone Control Script: TensorFlow Warning and YAML Dump Issue:
**Symptom**: When attempting to run the `run_drone_control.py` script to run a provided test simulation of the drone using the commands below:

```
cd flightctrl
cd examples
python3 run_drone_control.py --train 0 --render 1
```
The following traceback error was encountered:

```

Traceback (most recent call last):
  File "run_drone_controltest.py", line 92, in <module>
    main()
  File "run_drone_controltest.py", line 52, in main
    yaml.dump(cfg), False))
  File "/home/sdp/anaconda3/envs/ENVNAME/lib/python3.6/site-packages/ruamel/yaml/main.py", line 591, in dump
    raise TypeError('Need a stream argument when not dumping from context manager')
TypeError: Need a stream argument when not dumping from context manager
```

**Possible Cause**: 
- The issue was caused by the incorrect usage of the `yaml.dump` method in the python script. The error message `TypeError: Need a stream argument when not dumping from context manager` indicated that yaml.dump requires a stream to write to when not used within a context manager.

**Solution**: 
To resolve this issue:

1. **Imported StringIO**: First, the `StringIO` class from the `io` module was imported. `StringIO` allows us to treat strings as file-like objects.

2. **Used StringIO for YAML Dump**: Instead of calling `yaml.dump(cfg)`, which caused the error, I used `yaml.dump(cfg, stream)` where `stream` is a `StringIO` object. This change provided a valid stream for `yaml.dump` to write the YAML content to.

3. **Passed YAML String to Environment**: After dumping the YAML configuration to `stream`, the string content of `stream` (`stream.getvalue()`) was passed to `QuadrotorEnv_v1` as its configuration parameter.


**Image for reference**:
![Example Error](images/yaml_dump.jpeg) 

## Issues with installing ROS:

### Catkin build fails building certain packages:
**Symptom**:
**Possible Cause**:
**Solution**:
**Image for reference**:

## Frequently Asked Questions (FAQ)

<details>
  <summary><strong>1. How do I install the Flightmare simulator on a fresh Linux installation?</strong></summary>

  To install the Flightmare simulator on a fresh Linux installation, refer to the [Setup Guide](docs/setup_guide.md).


  For troubleshoot and possible solutions, refer to the [Troubleshooting](docs/troubleshoot.md).
</details>

<details>
  <summary><strong>2. How do I modify simulation parameters?</strong></summary>

  You can modify simulation parameters by editing the configuration file or using ROS topics. Here's how:

  - **Configuration File**:
    Edit `config/default_config.json` to set parameters like environment, drone model, wind speed, and sun location.

  - **ROS Topics**:
    Use ROS topics to dynamically change parameters during simulation.

  For example, to change the wind speed, you can update the `wind_speed` value in the configuration file:
  ```json
  {
      "wind_speed": 10
  }
  ```

  Then, launch the simulator with the updated configuration.
</details>

<details>
  <summary><strong>3. How do I troubleshoot common installation issues?</strong></summary>

  If you encounter issues during installation, refer to the [Troubleshooting Guide](docs/troubleshoot.md). Here are some common problems and their solutions:

  - **Error: "ROS Noetic not found"**:
    Ensure that ROS Noetic is installed and sourced correctly:
    ```bash
    source /opt/ros/noetic/setup.bash
    ```

  - **Error: "Configuration file not found"**:
    Verify the path to the configuration file and ensure it exists.

  - **Error: "Unable to load environment model"**:
    Check that the model file `garrulus_forest_floor.model` is in the correct directory and not corrupted.

</details>

<details>
  <summary><strong>4. How do I run the simulation with the Garrulus forest floor model?</strong></summary>

  To run the simulation with the Garrulus forest floor model:

  1. Ensure the model file is placed in the `src/models/` directory.
  2. Modify the configuration file to specify the environment:
      ```json
      {
          "environment": "garrulus_forest_floor"
      }
      ```
  3. Launch the simulator using the ROS launch file:
      ```bash
      roslaunch flightmare ros_launch_file.launch
      ```

  The simulator should now load with the specified environment model.
</details>

<details>
  <summary><strong>5. How do I set up and use the bootable SSD for development and testing?</strong></summary>

  To set up and use the bootable SSD:

  1. **Format the SSD**:
      ```bash
      sudo mkfs.ext4 /dev/sdX
      ```

  2. **Mount the SSD**:
      ```bash
      sudo mount /dev/sdX /mnt
      ```

  3. **Copy Project Files**:
      ```bash
      sudo cp -r /path/to/flightmare_project /mnt
      ```

  4. **Install Dependencies**:
      ```bash
      sudo chroot /mnt /bin/bash
      cd /flightmare_project
      ./setup.sh
      exit
      ```

  5. **Unmount the SSD**:
      ```bash
      sudo umount /mnt
      ```

  You can now boot from the SSD on a lab PC and follow the setup guide to run the simulator. Refer to the [SSD Setup Guide](docs/setup_guide.md) for detailed instructions.
</details>