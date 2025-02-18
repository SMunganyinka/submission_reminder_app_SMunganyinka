#!/bin/bash

# Prompt for user name
echo "Enter your name: "
read -r user_name  # Use -r to prevent backslash interpretation

# Define the root directory
app_dir="submission_reminder_${user_name}"

# Create the required directory structure
mkdir -p "$app_dir"/app "$app_dir"/modules "$app_dir"/assets "$app_dir"/config

# Create necessary files with sample content
echo "# Configuration settings" > "$app_dir/config/config.env"

echo "#!/bin/bash
# Functions script" > "$app_dir/modules/functions.sh"
chmod +x "$app_dir/modules/functions.sh"

echo "#!/bin/bash
# Reminder script" > "$app_dir/app/reminder.sh"
chmod +x "$app_dir/app/reminder.sh"

echo -e "student,assignment,submission status\nJohn,Shell Navigation,Submitted\nJane,Git,Not submitted\nAlex,Shell Basics,Submitted\nEmma,Shell Navigation,Not submitted\nMichael,Shell Basics,Submitted" > "$app_dir/assets/submissions.txt"

# Create startup.sh script
cat <<EOL > "$app_dir/startup.sh"
#!/bin/bash

# Startup logic
echo "Starting Submission Reminder App..."
source "./config/config.env"
echo "Application started successfully."
EOL

chmod +x "$app_dir/startup.sh"

echo "Environment setup complete. Run ./$app_dir/startup.sh to start the application."

