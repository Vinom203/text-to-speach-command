#!/bin/bash

# Create bin directory if it doesn't exist
mkdir -p ~/bin

# Download the script
wget -O ~/bin/tts https://example.com/path/to/your/script.py

# Make it executable
chmod +x ~/bin/mycommand

# Add the directory to the PATH (assuming it's not already added)
echo 'export PATH="$PATH:~/bin"' >> ~/.bashrc   # or ~/.bash_profile, ~/.zshrc, etc.

# Source the updated configuration
source ~/.bashrc   # or ~/.bash_profile, ~/.zshrc, etc.

echo "Installation complete. You can now use 'mycommand'."
