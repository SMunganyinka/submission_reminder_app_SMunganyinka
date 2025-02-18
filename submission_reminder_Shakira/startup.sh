#!/bin/bash

# Startup logic
echo "Starting Submission Reminder App..."

CONFIG_FILE="./submission_reminder_Shakira/config/config.env"

if [ -f "$CONFIG_FILE" ]; then
    source "$CONFIG_FILE"
    echo "Configuration loaded successfully."
else
    echo "Warning: Configuration file $CONFIG_FILE not found. Proceeding without it."
fi

echo "Application started successfully."
