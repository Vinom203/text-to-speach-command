#!/bin/bash

# Create bin directory if it doesn't exist
mkdir -p ~/bin

# Download the script
wget -O ~/bin/tts https://github.com/Vinom203/text-to-speach-command/blob/ff3ac6736a9c3bf42e09becfc62f6da124de77d4/script.py

# Make it executable
chmod +x ~/bin/tts

# Add the directory to the PATH (assuming it's not already added)
echo 'export PATH="$PATH:~/bin"' >> ~/.bashrc   # or ~/.bash_profile, ~/.zshrc, etc.

# Source the updated configuration
source ~/.bashrc   # or ~/.bash_profile, ~/.zshrc, etc.

echo "Installation complete. You can now use 'mycommand'."
