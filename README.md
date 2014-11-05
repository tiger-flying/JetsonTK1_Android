JetsonTK1_Android
=================

This is a personal project to port Android to NVIDIA's Jetson TK1.

The detail steps of the porting can be found here: http://rex-shen.net/port-android-nvidia-jetson-tk1/.

How to Deploy
-----------------
1) copy hardware/realtck to aosp/hardware/
2) copy vendor/nvidia to aosp/vendor/
3) copy device/nvidia to aosp/nvidia
4) use git to apply the patches in patch/

How to Flash the Images
-----------------
1) after compile aosp, copy boot.img, recovery.img, system.img, cache.img and userdata.img from aosp/out/target/product/jetsontk1/ to flash_tools
2) run "./flashos.sh" to flash all the images

Known Issues
-----------------
1) no hdmi audio output in some resolutions
2) auido playback will stop when lose focus
3) PPTV Android pad: no audio output when switch to full screen
4) can't support background audio playback
5) when playing, only two volume value supported: either 0 or max
6) QQ music: the sound becomes vibrato after playing a while
7) kernel panic while connecting to l2tp vpn
