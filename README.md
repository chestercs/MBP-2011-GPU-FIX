# MBP-2011-GPU-FIX
MacBook Pro 2011 Dedicated GPU Failure, Software fix



## Info
If you have MBP2011 with the typical Dedicated GPU failure, and don't want to spend money and time with reballing, replacing chip, etc.
Than you can just disable dedicated GPU permamently, and rely on the integrated CPU gpu.
This fix is permamently, but on OS update it reverts, so you have to repeat the same process to fix again.
Also you should be a bit lucky, and be able to read something from your flickering screen.


### Step1: Temp Fix in NvRam, to be able to reach recovery mode
Power your MBP while holding:

CMD+R+S

Then Run 

asd

Or you can create a file for easier repeat process.
touch gpu_fix_1_


### Step2: Recovery mode, Disable csrutil (File system protection)
Power your MBP while holding:

CMD+S+R

After its booted, open terminal (Utilities/Terminal)

csrutil disable


### Step3: Recovery mode, Fix GPU Permamently 
Power your MBP while holding:

CMD+S+R

After its booted, open terminal (Utilities/Terminal) (Mount Disks if you need)

cd /Volumes/<Your System Volume Name>
./gpu_fix_2


### Step4: Recovery mode, Enable csrutil (File system protection)
Power your MBP while holding:

CMD+S+R

After its booted, open terminal (Utilities/Terminal)

csrutil enable