# Troubleshooting Guide

This guide provides solutions to common issues you might encounter while setting up and running the Flightmare simulator.

## Common Issues

### 0. Example Error 1:
**Symptom**: When trying to <do something>, you receive an error indicating <something>
**Possible Cause**: The possible cause of this error is <this>
**Solution**: Possible ways to fix this error are:
1.
2.
3. ...

**Image for reference**:
![Example Error](images/error_screenshot1.png) 
(Put all your images in the images/ folder)

### 1. Example Error 2:
**Symptom**: When trying to <do something>, you receive an error indicating <something>
**Possible Cause**: The possible cause of this error is <this>
**Solution**: Possible ways to fix this error are:
1.
2.
3. ...

**Image for reference**:
![Example Error](images/error_screenshot2.png) 
(Put all your images in the images/ folder)

For additional help, refer to the [Setup Guide](setup_instructions.md) or [API Documentation](usage_instructions.md).


## Frequently Asked Questions (FAQ)

<details>
  <summary><strong>1. How do I install the Flightmare simulator on a fresh Linux installation?</strong></summary>

  To install the Flightmare simulator on a fresh Linux installation, follow these steps:

  1. **Clone the Repository**:
      ```bash
      git clone https://github.com/your-repo/flightmare_project.git
      cd flightmare_project
      ```

  2. **Run the Setup Script**:
      ```bash
      ./setup.sh
      ```

  3. **Configure the Simulator**:
      - Modify `config/default_config.json` to set desired parameters.
      - Use `config/ros_launch_file.launch` to launch the simulator with these parameters.

  For detailed instructions, refer to the [Setup Guide](docs/setup_guide.md).
</details>

<details>
  <summary><strong>2. How do I modify simulation parameters?</strong></summary>

  You can modify simulation parameters by editing the configuration file or using ROS topics. Here's how:

  - **Configuration File**:
    Edit `config/default_config.json` to set parameters like environment, drone model, wind speed, and sun location.

  - **ROS Topics**:
    Use ROS topics to dynamically change parameters during simulation. Refer to the [API Documentation](docs/api_documentation.md) for details on available topics and how to use them.

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

  If you encounter issues during installation, refer to the [Troubleshooting Guide](docs/troubleshooting.md). Here are some common problems and their solutions:

  - **Error: "ROS Noetic not found"**:
    Ensure that ROS Noetic is installed and sourced correctly:
    ```bash
    source /opt/ros/noetic/setup.bash
    ```

  - **Error: "Configuration file not found"**:
    Verify the path to the configuration file and ensure it exists.

  - **Error: "Unable to load environment model"**:
    Check that the model file `garrulus_forest_floor.model` is in the correct directory and not corrupted.

  ![Configuration File Error](docs/images/error_screenshot1.png)
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

  You can now boot from the SSD on a lab PC and follow the setup guide to run the simulator. Refer to the [SSD Setup Guide](docs/ssd_setup_guide.md) for detailed instructions.
</details>

<details>
  <summary><strong>6. How do I contribute to this project?</strong></summary>

  Contributions are welcome! Here’s how you can get involved:

  1. **Fork the Repository**: Click the "Fork" button at the top of this page to create a copy of this repository under your GitHub account.
  2. **Clone Your Fork**:
      ```bash
      git clone https://github.com/your-username/flightmare_project.git
      cd flightmare_project
      ```

  3. **Create a Branch**:
      ```bash
      git checkout -b my-feature-branch
      ```

  4. **Make Your Changes**: Implement your feature or bug fix.
  5. **Commit Your Changes**:
      ```bash
      git add .
      git commit -m "Describe your changes"
      ```

  6. **Push to Your Branch**:
      ```bash
      git push origin my-feature-branch
      ```

  7. **Create a Pull Request**: Go to the original repository on GitHub and click "New Pull Request" to submit your changes for review.

  For more details, refer to our [Contributing Guide](CONTRIBUTING.md).
</details>