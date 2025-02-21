# submission_reminder_app_SMunganyinka

The Submission Reminder App is a shell script-based application designed to help track assignment submissions. It reads a list of students and their submission statuses from a file and provides reminders for pending assignments.

Directory Structure

The application follows this directory structure:

submission_reminder_{your_name}/
│-- app/
│   ├── reminder.sh
│-- modules/
│   ├── functions.sh
│-- assets/
│   ├── submissions.txt
│-- config/
│   ├── config.env
│-- startup.sh

Features

Reads student assignment submission data from submissions.txt.

Notifies students who haven't submitted their assignments.

Provides assignment details and remaining days.

Runs a reminder script to check and display submission statuses.

Setup Instructions

1. Running the Setup Script

Execute the following command to create the environment:

bash create_environment.sh

You will be prompted to enter your name, which will be used in the directory structure.

2. Running the Application

After setting up, navigate to the created directory:

cd submission_reminder_{your_name}

Run the startup script:

./startup.sh

This will trigger the reminder script, displaying pending submissions.

File Descriptions

startup.sh

Starts the submission reminder application.

Runs the reminder.sh script.

app/reminder.sh

Sources environment variables and helper functions.

Reads submissions.txt and checks assignment submission statuses.

modules/functions.sh

Contains functions to process submission data.

Checks which students have not submitted their assignments.

assets/submissions.txt

Stores student names, assignments, and submission statuses.

Used by the application to verify pending submissions.

config/config.env

Stores assignment details and remaining days for submission.

Example Output

Starting submission reminder application...
Assignment: Shell Navigation
Days remaining to submit: 2 days
--------------------------------------------
Checking submissions in ./assets/submissions.txt
Reminder: Chinemerem has not submitted the Shell Navigation assignment!
Reminder: Chiagoziem has submitted the Git assignment!
Reminder: Divine has not submitted the Shell Navigation assignment!
Reminder: Anissa has submitted the Shell Basics assignment!
Reminder: Tullah has submitted the Git assignment!
Reminder: Shamim has submitted the Shell Navigations assignment!
Reminder: Shaban has not submitted the Shell Basics assignment!
Reminder: Shanessa has submitted the Git assignment!
Reminder: Shania has not submitted the Shell Navigations assignment!
