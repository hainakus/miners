#/bin/bash

export DISPLAY=:0

FANSPEED_1070TI=50
FANSPEED_1080TI=50
FANSPEED_3080TI_FTW=60

# 1070 TI
POWER_1070TI=120
CLOCK_1070TI=100
MEMORY_1070TI=1000

# 1080 TI
POWER_1080TI=140
CLOCK_1080TI=100
MEMORY_1080TI=850

# 1080 TI FTW3 Edition
POWER_1080TI_FTW=140
CLOCK_1080TI_FTW=100
MEMORY_1080TI_FTW=850

# 1080 TI FTW3 Edition
POWER_3080TI_FTW=315
CLOCK_3080TI_FTW=1110
MEMORY_3080TI_FTW=2000
xinit&
# List all Cards
nvidia-smi -L
# DISABLE GUI BOOT
sudo systemctl set-default multi-user

nvidia-xconfig -a --allow-empty-initial-configuration --cool-bits=28 --use-display-device="DFP-0" --connected-monitor="DFP-0"

# Enable persistance
nvidia-smi -pm 1

# Adjust power limits
nvidia-smi -i 0 -pl $POWER_3080TI_FTW


nvidia-settings -c :0 -a '[gpu:0]/GPUGraphicsClockOffset[4]=-500' -a '[gpu:0]/GPUMemoryTransferRateOffset[4]=1100'
nvidia-settings -c :0 -q '[gpu:0]/GPUGraphicsClockOffset[4]' -q '[gpu:0]/GPUMemoryTransferRateOffset[4]' --ctrl-display=:0

nvidia-settings -c :0 -a '[gpu:0]/GPUMemoryTransferRateOffset[3]=2000'
nvidia-settings -c :0 -a '[gpu:0]/GPUGraphicsClockOffset[3]=-50'
