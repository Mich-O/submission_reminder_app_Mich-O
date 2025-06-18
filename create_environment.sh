#!/bin/bash
#Prompt user for their name
echo -n "What is your name? "
read yourName

#Create and access directory with the name input
mkdir submission_reminder_${yourName}
cd submission_reminder_${yourName}

#make directory structure with corresponding files
mkdir  app modules assets config
touch startup.sh app/reminder.sh modules/functions.sh assets/submissions.txt config/config.env

#Populate the files
cat << 'EOF' > config/config.env
# This is the config file
ASSIGNMENT="Shell Navigation"
DAYS_REMAINING=2
EOF

cat << 'EOF' > app/reminder.sh
#!/bin/bash

# Source environment variables and helper functions
source ./config/config.env
source ./modules/functions.sh

# Path to the submissions file
submissions_file="./assets/submissions.txt"

# Print remaining time and run the reminder function
echo "Assignment: $ASSIGNMENT"
echo "Days remaining to submit: $DAYS_REMAINING days"
echo "--------------------------------------------"

check_submissions $submissions_file
EOF

cat << 'EOF' > modules/functions.sh
#!/bin/bash

# Function to read submissions file and output students who have not submitted
function check_submissions {
    local submissions_file=$1
    echo "Checking submissions in $submissions_file"

    # Skip the header and iterate through the lines
    while IFS=, read -r student assignment status; do
        # Remove leading and trailing whitespace
        student=$(echo "$student" | xargs)
        assignment=$(echo "$assignment" | xargs)
        status=$(echo "$status" | xargs)

        # Check if assignment matches and status is 'not submitted'
        if [[ "$assignment" == "$ASSIGNMENT" && "$status" == "not submitted" ]]; then
            echo "Reminder: $student has not submitted the $ASSIGNMENT assignment!"
        fi
    done < <(tail -n +2 "$submissions_file") # Skip the header
}
EOF

cat << 'EOF' > assets/submissions.txt
student, assignment, submission status
Chinemerem, Shell Navigation, not submitted
Chiagoziem, Git, submitted
Divine, Shell Navigation, not submitted
Anissa, Shell Basics, submitted
Karimi, Shell Basics, not submitted
Erin, Git, submitted
Brian, Shell Navigation, not submitted
Leresi, Shell Basics, not submitted
Joan, Git, not submitted
EOF

cat << 'EOF' > startup.sh
#!/bin/bash
echo "Initializing reminder app"

#confirm existance of reminder.sh file
if [[ ! -f app/reminder.sh ]]; then
echo "reminder.sh file is missing!"
fi

#confirm existence of  functions.sh file
if [[ ! -f modules/functions.sh ]]; then
echo "functions.sh file is missing!"
fi

#confirm existence of submissions.txt file
if [[ ! -f assets/submissions.txt ]]; then
echo "submissions.txt file is missing!"
fi

#confirm existence of config.env file
if [[ ! -f config/config.env ]]; then
echo "config.env file is missing!"
fi

echo "Reminder app has been initialized"

#run reminder script
bash app/reminder.sh
EOF
#add execute permissions to .sh files in the directory and subdirectories
find -name "*.sh" -type f -exec chmod +x {} \;

