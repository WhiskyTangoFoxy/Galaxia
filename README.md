# Galaxia 
*Godly Administrative Logon and Access Xenosystem of the Interstellar Array*

## SSH Login Script

This script allows you to test SSH connections to devices using a list of credentials stored in a CSV file. The script will iterate through the list of credentials, attempting to SSH to a specified IP address using each set of credentials until a successful connection is made or the end of the list is reached. The results of each SSH connection attempt will be logged to the console.

## Requirements
- `sshpass` must be installed. You can install it using your system's package manager, such as `apt-get` on Ubuntu or `yum` on Fedora.

## Usage
bash galx.sh <IP address> <CSV file>

## Example
bash galx.sh 192.168.1.100 galaxia.csv

## CSV Format
The CSV file should contain two columns, separated by a comma:
- Column 1: username
- Column 2: password

Please note that using `sshpass` can be a security risk, as the password will be stored in plain text in the script. If you're using this script in a secure environment, make sure to limit access to the script file and to the machine where it will run.

## Contributing
ChatGPT powered project by JoeTheTech
