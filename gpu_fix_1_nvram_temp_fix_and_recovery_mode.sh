#!/bin/bash
nvram fa4ce28d-b62f-4c99-9cc3-6815686e30f9:gpu-power-prefs=%01%00%00%00
echo "GPU Changed to internal, ready for recovery mode"
echo ""
sleep 1

nvram "recovery-boot-mode=unused"
echo "Recovery mode initiated..."
echo "After Recovery booted, Utilities-Terminal. Than use gpu_fix_2"
echo "Restarting after 5s"
sleep 5
reboot

exit 1
