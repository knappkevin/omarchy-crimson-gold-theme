#!/bin/bash

# Install and configure the spicetify theme

# Install Spicetify
echo "Installing Spicetify..."
sudo pacman -S --noconfirm spicetify-cli

# Set Spicetify theme and color scheme
echo "Configuring Spicetify..."
spicetify config current_theme StarryNight
spicetify config color_scheme Sunrise

# Copy theme files to Spicetify directory
echo "Copying Spicetify themes..."
cp -r ~/.config/omarchy/themes/crimson-gold/spicetify-themes/. ~/.config/spicetify/Themes

# Apply spicetify theme
echo "Applying Spicetify configuration..."
spicetify backup apply
