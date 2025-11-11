#!/bin/bash

# Set variables
DOTFILES_DIR="$HOME/dotfiles"
HOME_DIR="$HOME"
CONFIG_DIR="$HOME/.config"
DOTFILES_HOME_DIR="$DOTFILES_DIR/home"
DOTFILES_CONFIG_DIR="$DOTFILES_DIR/config"

# create a backup directory
BACKUP_DIR="$HOME/.dotfiles_backup/$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"
echo "Created backup directory at $BACKUP_DIR"

# Function to back up and create symlinks
link_file() {
    local src="$1"
    local dest="$2"

    # Back up existing files
    # if file exists "-e" and is NOT a symlink "! -L"
    if [ -e "$dest" ] && [ ! -L "$dest" ]; then
        # move it to the backup folder
        echo "Backing up $dest to $BACKUP_DIR/"
        mv "$dest" "$BACKUP_DIR/"
    # if file is a symlink
    elif [ -L "$dest" ]; then
        # remove the link
        echo "Removing existing symlink $dest"
        rm "$dest"
    fi

    # Create new symlink
    echo "Creating symlink "
    ln -sf "$src" "$dest"
}

# link home directory dotfiles
echo "Linking home directory dotfiles..."
for file in "$DOTFILES_HOME_DIR"/*; do
    [ -f "$file" ] || continue
    # Add dot to start of file name
    filename=".$(basename "$file")"
    link_file "$file" "$HOME_DIR/$filename"
done


# Link .config directory files
echo "Linking .config directory files..."
mkdir -p "$CONFIG_DIR"
for dir in "$DOTFILES_CONFIG_DIR"/*; do
    [ -d "$dir" ] || continue
    dirname=$(basename "$dir")
    link_file "$dir" "$CONFIG_DIR/$dirname"
done


echo "Dotfiles installation complete!"
