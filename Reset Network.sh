#!/bin/bash
# Restart the ethernet network. Asks for the password because of the sudo!

sudo ifconfig en0 down
sleep 2
sudo ifconfig en0 up
