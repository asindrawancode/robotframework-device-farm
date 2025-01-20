
# Mobile Parallel Automation Testing Framework using Appium Device Farm Plugin

This repository contains a mobile automation testing framework built using Robot Framework and Appium to test mobile applications on a local device farm. It also integrates Allure for generating detailed test reports.

## Features

- **Robot Framework**: A powerful open-source automation framework.
- **Appium**: An open-source tool for automating mobile applications.
- **Local Device Farm**: Enables testing on various locally-connected devices.
- **Allure Reports**: Comprehensive and visually appealing test reports.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- [Python 3.x](https://www.python.org/downloads/) installed.
- [pip](https://pip.pypa.io/en/stable/installation/) - Python package manager.
- [Node.js](https://nodejs.org/) with npm for Appium.
- [Java Development Kit (JDK)](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html) installed.
- [Appium Server](http://appium.io/docs/en/about-appium/getting-started/?lang=en) installed.
- [Appium Device Farm Plugin ](https://devicefarm.org/setup/) installed.
- Installed browser for viewing Allure Reports.

## Installation

1. **Clone the Repository**

    ```bash
    git clone https://github.com/asindrawancode/robotframework-device-farm.git
    cd robotframework-device-farm
    ```

2. **Create a Virtual Environment**
    
    ```bash
    python3 -m venv .venv
    source .venv/bin/activate  # On Windows use: .venv\\Scripts\\activate
    
    ```
    
2. **Install Dependencies**
    
    Install Python dependencies:
    
    ```bash
    pip install -r requirements.txt
    
    ```
    
    Install Appium & Device Farm Plugin :
    
    ```bash
    npm install -g appium
    appium plugin install --source=npm appium-device-farm
    ```
    

1. **Set Up Local Device Farm**
    - Ensure your mobile devices are connected and have developer mode enabled.
    - Verify that your devices are recognized using `adb devices`.

## Usage

1. **Start Appium Device Farm Server (**
    
    Launch the Appium server in a new terminal window:
    
    ```bash
    appium server -ka 800 --use-plugins=device-farm  -pa /wd/hub --plugin-device-farm-platform=android
    ```
    
2. **Update Config `runParallel.sh` for the execution**
    
    Update on this section:
    
    ```bash
    # Define an remote_url for each device or make it same if connect to the same url
    remote_urls=(
      "http://0.0.0.0:4723/wd/hub"
      "http://0.0.0.0:4723/wd/hub"
      "http://0.0.0.0:4723/wd/hub"
    )
    
    # Define an array for each devices
    udids=(
      "127.0.0.1:6555"
      "emulator-5554"
      "emulator-5556"
    )
    
    # Define the corresponding test files for each device
    test_files=(
      "tests/test_guest.robot"
      "tests/test_landing.robot"
      "tests/test_loginUser.robot"
    )
    ```
    
3. **Execute the code**
    
    ```bash
    chmod +x runParallel.sh
    ./runParallel.sh
    ```
    
4. **Open Allure Reports**
    
    View the reports in a browser:
    
    ```bash
    allure open report
    
    ```
    

## Project Structure

- `tests/`: Test suites and cases written in Robot Framework syntax.
- `resources/`: Common resource files like keywords and variables.