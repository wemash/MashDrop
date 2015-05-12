#!/bin/bash

VAGRANT_DIR="/vagrant"

# Branding...
cat "$VAGRANT_DIR/chef/shell/mashdrop.txt"

# Update apt-get
echo "Updating apt-get and installing necessary componenents..."
apt-get update &> /dev/null && sudo apt-get install -y libssl-dev zlib1g-dev libreadline-dev

#Install ruby
echo "Checking for ruby and installing if it's missing..."
apt-get install build-essential ruby1.9.1-dev --no-upgrade --yes &> /dev/null

# Upgrade Chef.
echo "Updating Chef to 11.12.4 version. This may take a few minutes..."
gem install chef --version 11.12.4 --no-rdoc --no-ri --conservative &> /dev/null

# Install other gems
echo "Installing compass and sass-globbing..."
gem install compass
gem install sass-globbing
