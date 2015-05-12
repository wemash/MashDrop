#!/bin/bash

VAGRANT_DIR="/vagrant"

VDD_IP=$(echo "$1")

echo "============================================================="
echo "Install finished! Visit http://$VDD_IP in your browser." 
echo "============================================================="

cat "$VAGRANT_DIR/chef/shell/fertig.txt"