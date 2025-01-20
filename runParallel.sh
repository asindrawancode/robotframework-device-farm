#!/bin/bash

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

# Directory to store individual outputs
output_base_dir="device_outputs"
# Directory for combined results
combined_results_dir="combined_results"
# Directory for Allure results
allure_results_dir="allure-results"
# Directory for Allure report
allure_report_dir="allure-report"


# Function to clean up previous reports
cleanup_reports() {
  echo "Cleaning up previous reports..."

  # Remove previous individual device output directories
  if [ -d "$output_base_dir" ]; then
    rm -rf "$output_base_dir"
  fi

  # Remove previous combined results
  if [ -d "$combined_results_dir" ]; then
    rm -rf "$combined_results_dir"
  fi

  # Remove previous Allure results
  if [ -d "$allure_results_dir" ]; then
    rm -rf "$allure_results_dir"
  fi

  # Remove previous Allure report
  if [ -d "$allure_report_dir" ]; then
    rm -rf "$allure_report_dir"
  fi

  echo "Cleanup complete."
}

# Call the cleanup function
cleanup_reports

# Ensure the base output directory exists
mkdir -p "$output_base_dir"

# Iterate over the devices array for execution
for i in "${!udids[@]}"; do
  udid="${udids[i]}"
  test_file="${test_files[i]}"
  remote_url="${remote_urls[i]}"

  output_dir="$output_base_dir/device_$((i+1))"

  # Create output directory for each device
  mkdir -p "$output_dir"

  # Construct and execute the robot command for each device
  echo udid +" ============= "+ $test_file +" ============= "+ $remote_url
  robot --listener allure_robotframework:"$allure_results_dir" --outputdir "$output_dir" -v PLATFORM_NAME:Android -v UDID:"$udid" -v REMOTE_URL:"$remote_url" "$test_file" &
done

# Wait for all background jobs to finish
wait

# Collect all output.xml files into an array for rebot
output_files=()
for dir in "$output_base_dir"/*; do
  output_files+=("$dir/output.xml")
done

# Use rebot to combine the output files into a single report
rebot --outputdir "$combined_results_dir" --name CombinedTestResults "${output_files[@]}"

# Generate Allure report
echo "Generating Allure report..."
allure generate "$allure_results_dir" --clean -o "$allure_report_dir" || echo "Allure report generation failed."

echo "Consolidated report generated in $combined_results_dir directory."
echo "Allure report generated in $allure_report_dir directory."
