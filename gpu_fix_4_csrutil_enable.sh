#!/bin/bash

echo "System Integrity protection status:"
csrutil status
echo ""

sleep 1
echo "Enabling System Integrity protection..."
csrutil enable
csrutil status
echo ""

nvram -d recovery-boot-mode
echo "Standard reboot initiated..."
echo "You're dedicated GPU is disabled in your OS"
echo "Restarting after 5s"
sleep 5
reboot