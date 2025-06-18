#!/bin/bash
echo "Enter assignment name:"
read assignment

#replace the value attached to ASSIGNMENT in config.env to assignment name entered when copilot script is run
sed -i "s|ASSIGNMENT=.*|ASSIGNMENT=\"$assignment\"|" submission_reminder_*/config/config.env

echo "Old Assignment updated to "$assignment""



