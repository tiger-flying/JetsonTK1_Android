JetsonTK1_Android
=================

This is a personal project to port Android to NVIDIA's Jetson TK1.

The detail steps of the porting can be found here: http://rex-shen.net/port-android-nvidia-jetson-tk1/.

How to Deploy
-----------------
* copy hardware/realtck to aosp/hardware/
* copy vendor/nvidia to aosp/vendor/
* copy device/nvidia to aosp/nvidia
* use git to apply the patches in patch/

How to Flash the Images
-----------------
* after compile aosp, copy boot.img, recovery.img, system.img, cache.img and userdata.img from aosp/out/target/product/jetsontk1/ to flash_tools
* run "./flashos.sh" to flash all the images

Known Issues
-----------------
* no hdmi audio output in some resolutions
* ~~auido playback will stop when lose focus~~
* ~~PPTV Android pad: no audio output when switch to full screen~~
* ~~can't support background audio playback~~
* when playing, only two volume value supported: either 0 or max
* QQ music: the sound becomes vibrato after playing a while
* kernel panic while connecting to l2tp vpn
