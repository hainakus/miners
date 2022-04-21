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

# List all Cards
nvidia-smi -L
# DISABLE GUI BOOT
sudo systemctl set-default multi-user



# Enable persistence mode so the driver doesn't get unloaded
sudo nvidia-smi -pm ENABLED

# Power limit the card so it's not ramping up to full speed, I've benchmarked and found that FOR MY CARD, 110W does not impact performance.
sudo nvidia-smi -pl 315

# Start the X server, nvidia-settings are retarded and require it to be running.
X :0 &
sleep 5
export DISPLAY=:0
sleep 3

sudo nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=75" -a "[gpu:0]/GPUGraphicsClockOffset[3]=-200" -a "[gpu:0]/GPUMemoryTransferRateOffset[3]=2000"

exit 0