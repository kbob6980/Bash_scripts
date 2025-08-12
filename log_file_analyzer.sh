#!/bin/bash

# This script allows you to extract lines containing specified keywords
# and save the results to a new file with a timestamp in the filename

# Specify the keyword to search for and turn it into a virable
echo "Specify keywords you're looking for:"
read keyword

# Define the path to the syslog file
SYSLOG="/var/log/syslog"

# Check if the user provided a keyword
# If no keyword is provided, exit the script
# If a keyword is provided, search for it in the syslog file
if [ -z "$keyword" ]; then
  echo "No keyword provided. Exiting."
  exit 1
else 
  echo "Searching for lines containing '$keyword' in $SYSLOG..."
  date=$(date +%Y%m%d_%H%M%S)
  grep "$keyword" $SYSLOG > "${date}_log_file_analyzer.txt"
  echo "Results saved to ${date}_log_file_analyzer.txt"
fi

# End of script