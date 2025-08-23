# A simple collection of my bash scripts

* **File Counter script** \
  As the name suggests, this script allows you to count files with a specified extension in the current working directory. If no extension is specified, all files will be counted.\
  [*file_counter_script.sh*](https://github.com/kbob6980/Bash_scripts/blob/main/file_counter_script.sh)

* **Simple Log File Analyzer** \
  This script let's you extract a .txt file with log entries based on your keyword input. The data is then saved to a file *timestamp*.txt and can be accesed right afterwards with nano or other text editor (just change it in the source file)\
  [*log_file_analyzer.sh*](https://github.com/kbob6980/Bash_scripts/blob/main/log_file_analyzer.sh)

* **Password Strenght Checker** \
  A simple script that let's user provide a password and checks wheter it contains at least one: lowercase, uppercase, number and special character. It also runs the password through dictionary just in case.\
  [*password_strength_checker.sh*](https://github.com/kbob6980/Bash_scripts/blob/main/password_strength_checker.sh)

* **Quick IP Recon** \
  This Bash script performs basic reconnaissance on a target IP address. It uses Nmap to scan for open ports and service versions, saving the results to a file. If it detects that the Samba (SMB) port 445 is open, it runs enum4linux to enumerate users and shares, appending the findings to the same results file. This script helps automate initial network and SMB enumeration steps during penetration testing or network assessments.\
  [*recon.sh*](https://github.com/kbob6980/Bash_scripts/blob/main/quick_recon.sh)
