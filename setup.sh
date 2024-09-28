#!/bin/bash

# Configure Nix
echo "Configuring Nix..."
mkdir ~/.config/nixpkgs/ 
touch ~/.config/nixpkgs/config.nix
echo '{ allowUnfree = true; }' > ~/.config/nixpkgs/config.nix

nix-shell shell.nix
