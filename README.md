# MBP-2011-GPU-FIX
> MacBook Pro 2011 Dedicated GPU Failure, Software fix



## Info
If you have MBP2011 with the typical Dedicated GPU failure, and don't want to spend money and time with reballing, replacing chip, etc.  
Than you can just disable dedicated GPU permamently, and rely on the integrated CPU gpu.  
This fix is permamently, but on OS update it reverts, so you have to repeat the same process to fix again.  

### Step1: Temp Fix in NvRam, to be able to reach recovery mode
Power your MBP while holding:  

    CMD + R + S
Then Run 

    nvram fa4ce28d-b62f-4c99-9cc3-6815686e30f9:gpu-power-prefs=%01%00%00%00
    nvram "recovery-boot-mode=unused"
    reboot
Or you can run /gpu_fix_1_nvram_temp_fix_and_recovery_mode.sh

    chmod 755 ./gpu_fix_1_nvram_temp_fix_and_recovery_mode.sh
    ./gpu_fix_1_nvram_temp_fix_and_recovery_mode.sh


### Step2: Recovery mode, Disable csrutil (System Integrity protection)
After its booted, open terminal (Utilities/Terminal)
Then Run 

    csrutil disable
    nvram "recovery-boot-mode=unused"
    reboot
    
Or you can run /gpu_fix_2_csrutil_disable.sh

    cd /Volumes/<Your System Volume Name>
    chmod 755 ./gpu_fix_2_csrutil_disable.sh
    ./gpu_fix_2_csrutil_disable.sh


### Step3: Recovery mode, Fix GPU Permamently 
After its booted, open terminal (Utilities/Terminal)
Then Run 

    csrutil status
csrutil status should be disabled state

    mkdir -p /System/Library/Extensions-off
    mv System/Library/Extensions/AMDRadeonX3000.kext/ System/Library/Extensions-off/AMDRadeonX3000.kext/
    nvram "recovery-boot-mode=unused"
    reboot
    
Or you can run /gpu_fix_3_remove_gpu_kext.sh

    cd /Volumes/<Your System Volume Name>
    chmod 755 ./gpu_fix_3_remove_gpu_kext.sh
    ./gpu_fix_3_remove_gpu_kext.sh


### Step4: Recovery mode, Enable csrutil (System Integrity protection)
After its booted, open terminal (Utilities/Terminal)
Then Run 

    csrutil enable
    nvram -d recovery-boot-mode
    reboot
    
Or you can run /gpu_fix_4_csrutil_enable.sh

    cd /Volumes/<Your System Volume Name>
    chmod 755 ./gpu_fix_4_csrutil_enable.sh
    ./gpu_fix_4_csrutil_enable.sh

#### Probably useful links:

 - Idea came from: https://forums.macrumors.com/threads/force-2011-macbook-pro-8-2-with-failed-amd-gpu-to-always-use-intel-integrated-gpu-efi-variable-fix.2037591/page-57#post-25751208
 - Entering recovery mode: https://apple.stackexchange.com/questions/332587/single-user-recovery-mode-on-high-sierra-10-13-6
 - Reseting NVRAM: https://support.apple.com/en-us/HT204063
 - Disabling with chip flashing: https://www.youtube.com/watch?v=n6ROPL2-5HA
 - Reflowing (lol): https://www.youtube.com/watch?v=slF_4yKUW0s