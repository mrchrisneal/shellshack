#!/bin/bash

# ShellShack unRAID User Scripts Installer
# Chris Neal - v1.1 - July 3rd, 2023

# URLs of the files to download
FILES=(
  "https://raw.githubusercontent.com/mrchrisneal/shellshack/main/update_shellshack_scripts/script"
  "https://raw.githubusercontent.com/mrchrisneal/shellshack/main/update_shellshack_scripts/name"
  "https://raw.githubusercontent.com/mrchrisneal/shellshack/main/update_shellshack_scripts/description"
)

# Destination folder for downloaded files
DEST_FOLDER="/boot/config/plugins/user.scripts/scripts/update_shellshack_scripts"

# Function to download and place the files
download_files() {
  for url in "${FILES[@]}"; do
    filename=$(basename "$url")
    echo "Downloading $filename..."
    if curl -s -o "$DEST_FOLDER/$filename" "$url"; then
      echo "Downloaded $filename successfully."
    else
      echo "Failed to download $filename."
    fi
  done
}

# Main script logic
echo "ShellShack Install Script v1.0"
echo "----------------------------"

# Create destination folder if it doesn't exist
mkdir -p "$DEST_FOLDER"

# Download and place the files
download_files

# Execute the downloaded "script" file
chmod +x "$DEST_FOLDER/script"
bash "$DEST_FOLDER/script"

echo "Install script completed!"
echo "IMPORTANT: Some scripts still need additional setup! See Github for more info."
echo "https://github.com/mrchrisneal/shellshack"
