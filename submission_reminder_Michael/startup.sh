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
