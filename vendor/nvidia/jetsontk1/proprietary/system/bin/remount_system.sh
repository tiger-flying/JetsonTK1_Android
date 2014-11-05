#!/system/bin/sh

# I don't know why, but in order to remount system partition to read-write, I have to mount it 
# to some other mount point, but the mount will fail with "Device Busy"
mount -t ext4 /dev/block/platform/sdhci-tegra.3/by-name/APP /mnt/sdcard

# now I can remount the partition successfully
mount -o remount rw /system/
