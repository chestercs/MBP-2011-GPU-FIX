#!/bin/bash

echo "System Files protection status:"
csrutil status
echo ""

sleep 1
echo "Enabling system protection..."
csrutil enable
csrutil status
echo ""

echo "Standard reboot initiated..."
echo "You're dedicated GPU is disabled in your OS"
echo "Restarting after 5s"
sleep 5
reboot