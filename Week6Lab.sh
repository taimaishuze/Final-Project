#!/bin/bash
# Vang Lee

# Week 6 CSCI 2461 Computer Networking 2 - Linux

# Start off with latest updates, if available.
echo "Performing updates in 5 seconds..."
echo ""
sleep 5s
sudo apt-get update
echo "Updates complete..."
sleep 5s

# Use of dmesg to display system information
echo "Displaying system info..."
echo ""
sudo dmesg | less
sleep 5s

echo "Displaying CPU information..."
echo ""
sudo dmesg | grep -i CPU
sleep 5s

echo "Displaying USB information..."
echo ""
sudo dmesg | grep -i USB
sleep 5s

echo "Need some help?  Try using some of these additional commands..."
echo ""
sudo dmesg -h | less
sleep 5s

echo "This concludes my Week 6 Lab, please feel free to let me know if you have any questions.  Thank you."
