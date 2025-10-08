#!/bin/bash



# Remove existing kitty.conf if it exists
if [ -f ~/.config/kitty/kitty.conf ]; then
    echo "Removing existing kitty.conf..."
    rm ~/.config/kitty/kitty.conf
else
    echo "No existing kitty.conf found. Skipping removal."
fi

# Remove existing theme directory if it exists and recreate it
if [ -d ~/.config/kitty/theme ]; then
    echo "Removing existing theme directory..."
    rm -rf ~/.config/kitty/theme
fi

# Recreate necessary directories
mkdir -p ~/.config/kitty
mkdir -p ~/.config/kitty/theme

# Create a hard link for kitty.conf
ln ./kitty.conf ~/.config/kitty/kitty.conf
echo "Created hard link for kitty.conf."

# Create hard links for all theme files in the ./theme directory to the theme folder
for file in ./theme/*.conf; do
    if [ -f "$file" ]; then
        ln "$file" ~/.config/kitty/theme/
        echo "Created hard link for $file."
    else
        echo "File $file does not exist. Skipping."
    fi
done

echo "Kitty config and theme setup complete."
