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

# I thought it would be useful to ask the user if they want to open the file after saving
# If the user chooses to open the file, it will be opened in nano editor (or other editor of choice)
# If the user chooses not to open the file, the script will exit gracefully
echo "Would you like to open the file? (y/n)"
read open
if [ $open == "y" ]; then
  echo "Opening file"
  nano "${date}_log_file_analyzer.txt"
else 
  echo "Exiting without opening the file."
fi

# End of script
