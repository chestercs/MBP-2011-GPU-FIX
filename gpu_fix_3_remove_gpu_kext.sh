#!/bin/bash

echo "System Integrity protection status:"
csrutil status
echo ""
sleep 1

echo "Removing dedicated GPU kext..."
mkdir -p /System/Library/Extensions-off
mv System/Library/Extensions/AMDRadeonX3000.kext/ System/Library/Extensions-off/AMDRadeonX3000.kext/
echo ""

nvram "recovery-boot-mode=unused"
echo "Recovery mode initiated..."
echo "After Recovery booted, Utilities-Terminal. Than use gpu_fix_3"
echo "Restarting after 5s"
sleep 5
reboot
