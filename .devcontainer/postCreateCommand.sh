#!/bin/bash

# Configure Nix
echo "Configuring Nix...
mkdir ~/.config/nixpkgs/ 
touch config.nix  
echo '{ allowUnfree = true; }' > ~/.config/nixpkgs/config.nix
