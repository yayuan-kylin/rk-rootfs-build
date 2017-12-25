#!/bin/sh

export DISPLAY=:0.0 
#export GST_DEBUG=ispsrc:5
#export GST_DEBUG_FILE=/tmp/2.txt

echo "Start MIPI CSI Camera Preview!"

su linaro -c " \
    gst-launch-1.0 v4l2src device=/dev/video1 ! videoconvert ! video/x-raw,format=NV12,width=640,height=480  ! rkximagesink \
" 
