#!/bash/bin

#This is a simple script to count the number of files in the current directory

#Ask the user for a file extension
echo "Desired file extension (e.g., txt, jpg):"
read extension

# Check if the user provided an extension
# If no extension is provided, count all files
# If an extension is provided, count files with that extension
if [ -z "$extension" ]; then
  total=$(find . -type f | wc -l)
  echo "No file extension provided. Counting all files."
  echo "Total number of files in the current directory: $total"
else
  specified=$(find . -type f -name "*.$extension" | wc -l)
  echo "Total number of files with extension .$extension: $specified"
fi

# End of script