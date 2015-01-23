#!/bin/bash

DEVICESTATE=`xinput list-props 13 | grep "Device Enabled" | cut -f3 -d$'\t'`

if [ $DEVICESTATE -eq 0 ]
then
    xinput set-prop 13 "Device Enabled" 1
else
    xinput set-prop 13 "Device Enabled" 0
fi
