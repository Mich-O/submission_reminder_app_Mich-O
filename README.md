Task 1: Create the Setup Script
Write a shell script named create_environment.sh That sets up the directory structure for an application called submission_reminder_app. This script creates the necessary directories and files for a program that shows students who need to be reminded of their pending submissions. The application's source code will be provided as part of the assignment.

Check all the files that are provided, they contain information you are going to use:
The submissions.txt  contains the sample records of the student’s submission status. View the file so you can see what the format looks like.
The config.env, reminder.sh, functions.sh, and the startup.sh Script files contain the code that enables the application to function.
Each file has to be placed in its respective directory. The Screenshot on point 2 shows you how they are ordered.

The Shell Script which you are supposed to create:
The shell script you are creating should be titled as create_environment.sh.
When the script runs, it should prompt the user for their name and create a directory named submission_reminder_{yourName}, replacing {yourName} With the input.
Once the directory is created, the following subdirectories and files will be inside it:
image.png
Then the files will contain the contents that are inside the files attached below. (Plus the startup.sh file, which you will create on your own)

Populate the Files:
The contents for reminder.sh, functions.sh, and config.env have been provided below to download and use. You will use them as references to create the respective files in the app’s directory structure.
Follow the structure of submissions.txt  When adding more students. You must have added atleast 5 more student records so that we can test the application better.

Implement the startup.sh Script:
One part of this assignment is for you to create your startup.sh script.
This script should contain logic that starts up the reminder app when executed.
Make the script executable
As the environment is getting created, ensure that the script also updates the permissions of all files with the .sh extension inside the created directory, to the executable

Once the environment has been created with the script, test the application you just created by running the  startup.sh

 
Task 2: Create the Copilot Shell Script
Write a shell script named copilot_shell_script.sh that:

Prompts the user to enter the assignment name, then the new input will replace the current name in config/config.env on the ASSIGNMENT value (row 2)
With the sed Or other suitable commands, the input of the assignment can replace the value in config/config.env
When the replacement is complete, you can rerun startup.sh that will check the non-submission status of students for the new assignment that was saved in the config/config.env.

Task 3: Git Branching Workflow
You must use two branches in your GitHub repository:
A feature branch (e.g., feature/setup) for your development and rough work.
The main branch (main or master) for your final application.
After merging, only the following files should be present in the main branch:
create_environment.sh
copilot_shell_script.sh
README.md
So what are you supposed to create?
The create_environment.sh That creates the directory submission_reminder_{yourName} With the subdirectories inside and the files required. 
The copilot_shell_script.sh that allows a user to enter another assignment name, and we check if there are students who have not submitted

Submission:
You will submit a GitHub repository, and it should be named like this: submission_reminder_app_GithubUsername (githubusername represents your username on GitHub)

Your repository should just contain this:

The create_environment.sh script
The copilot_shell_script.sh script
a A the README.md that contains instructions on how to run the application
 

The files below contain information that makes the application work. One more file is missing. You are the one who is going to implement it!
access contents of the config.env file: config.envDownload config.env
access contents of the reminder.sh file: reminder.sh Download reminder.sh 
access contents of the functions.sh file: functions.shDownload functions.sh
access contents of the submissions.txt file: submissions.txt
