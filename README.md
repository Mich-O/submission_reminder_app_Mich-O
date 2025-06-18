Component 1: Setup Script
A shell script named create_environment.sh 
It sets up the directory structure for an application called submission_reminder_app.
This script creates the necessary directories and files for a program that shows students who need to be reminded of their pending submissions.
The submissions.txt  contains the sample records of the student’s submission status.
The config.env, reminder.sh, functions.sh, and the startup.sh Script files contain the code that enables the application to function.

When the script runs, it prompts the user for their name and create a directory named submission_reminder_{yourName}, replacing {yourName} With the input.
Once the directory is created, the following subdirectories and files will be inside it:
Then the files will contain the contents that are inside the files attached below.


Implemented startup.sh Script:
This script contains logic that starts up the reminder app when executed.
Make the script executable
As the environment is getting created, ensure that the script also updates the permissions of all files with the .sh extension inside the created directory, to the executable

Once the environment has been created with the script, test the application you just created by running the  startup.sh

 
Component 2: The Copilot Shell Script
A shell script named copilot_shell_script.sh that:

Prompts the user to enter the assignment name, then the new input will replace the current name in config/config.env on the ASSIGNMENT value (row 2)
With the sed Or other suitable commands, the input of the assignment can replace the value in config/config.env
When the replacement is complete, you can rerun startup.sh that will check the non-submission status of students for the new assignment that was saved in the config/config.env.

Final: Git Branching Workflow
A feature branch (e.g., feature/setup) for your development and rough work.
The main branch (main or master) for your final application.
After merging, only the following files should be present in the main branch:
create_environment.sh
copilot_shell_script.sh
README.md
So what are you supposed to create?
The create_environment.sh That creates the directory submission_reminder_{yourName} With the subdirectories inside and the files required. 
The copilot_shell_script.sh that allows a user to enter another assignment name, and we check if there are students who have not submitted

