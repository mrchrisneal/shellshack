#!/bin/bash

# URLs of the files to download
FILES=(
  "https://raw.githubusercontent.com/mrchrisneal/shellshack/main/update_cn_scripts/script"
  "https://raw.githubusercontent.com/mrchrisneal/shellshack/main/update_cn_scripts/name"
  "https://raw.githubusercontent.com/mrchrisneal/shellshack/main/update_cn_scripts/description"
)

# Destination folder for downloaded files
DEST_FOLDER="/boot/config/plugins/user.scripts/scripts/update_cn_scripts"

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
echo "GitHub File Downloader Script"
echo "----------------------------"

# Create destination folder if it doesn't exist
mkdir -p "$DEST_FOLDER"

# Download and place the files
download_files

# Execute the downloaded "script" file
chmod +x "$DEST_FOLDER/script"
bash "$DEST_FOLDER/script"

echo "Script execution completed."
