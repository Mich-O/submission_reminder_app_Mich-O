#!/bin/bash
#Establishing the already created directory name
echo "Enter name used to run create_environment.sh: "
read yourName

#Missing name error handling
if [ -z "$yourName" ]; then
   echo "Name cannot be empty! Please rerun script and enter your name."
   exit 1
fi

#Spaced name error handling
if [[ "$yourName" == *" "* ]]; then
   echo "Your name should have no spaces!"
   exit 1
fi

#Validating if associated name directory exists
if [ ! -d "submission_reminder_$yourName" ]; then
   echo "submission_reminder_$yourName directory does not exist"
   exit 1
fi

#File path
SUBMISSION_FILE="submission_reminder_$yourName/assets/submissions.txt"

#Prompt user to enter the assignment
echo "Enter assignment name:"
read assignment

#Empty assignment input error handling
if [ -z "$assignment" ]; then
   echo "No input! Please enter the assignment name."
   exit
fi

#Check if assignment exists in submissions.txt
if ! awk -F, -v val="$assignment" '{ gsub(/^ +| +$/, "", $2); if ($2 == val) found=1 } END { exit !found }' "$SUBMISSION_FILE"; then
   echo "Error: Assignment "$assignment" not found in submissions.txt"
   exit 1
fi

#replace the value attached to ASSIGNMENT in config.env to assignment name entered when copilot script is run
#Spaced assignment values are accepted
sed -i "s|ASSIGNMENT=.*|ASSIGNMENT=\"$assignment\"|" submission_reminder_$yourName/config/config.env

echo "Old Assignment updated to "$assignment""

