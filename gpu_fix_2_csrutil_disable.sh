#!/bin/bash

echo "System Files protection status:"
csrutil status
echo ""

echo "Disabling system protection..."
csrutil disable
csrutil status
echo ""
sleep 1

nvram "recovery-boot-mode=unused"
echo "Recovery mode initiated..."
echo "After Recovery booted, Utilities-Terminal. Than use gpu_fix_3"
echo "Restarting after 5s"
sleep 5
reboot

exit 1