## Frequently Asked Questions (FAQ)

<details>
  <summary><strong>1. How do I install the Flightmare simulator on a fresh Linux installation?</strong></summary>

  To install the Flightmare simulator on a fresh Linux installation, refer to the [Setup Guide](/docs/installation.md).


  For troubleshoot and possible solutions, refer to the [Troubleshooting](/docs/troubleshoot.md).
</details>

<details>
  <summary><strong>2. How do I modify simulation parameters?</strong></summary>

  You can modify simulation parameters by editing the configuration file or using ROS topics. Here's how:

  - **Configuration File**:
    Edit the launch file `rotors_gazebo.launch` to set parameters like environment, drone model, wind speed, and sun location.

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

  If you encounter issues during installation, refer to the [Troubleshooting Guide](/docs/troubleshoot.md). This page has issues commonly faced during installation or setup, and steps that were taken in order to solve them.

</details>

<details>
  <summary><strong>4. How do I run the simulation with the Garrulus forest floor model?</strong></summary>

  To run the simulation with the Garrulus forest floor model:

  1. Ensure the model file is placed in the right directory.
  2. Modify the configuration file to specify the environment:
      ```json
      {
          "environment": "garrulus_forest_floor"
      }
      ```
  3. Launch the simulator using the ROS launch file:
      ```bash
      roslaunch flightmare rotors_gazebo.launch
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

  You can now boot from the SSD on a lab PC and follow the setup guide to run the simulator. Refer to the [Flightmare Installation and Setup Guide](/README.md) for further instructions to run the project.
</details>
