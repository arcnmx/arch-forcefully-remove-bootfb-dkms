#!/bin/bash
set -eu

BOOTFB=$(grep -F BOOTFB /proc/iomem | cut -d: -f1 | tr -d ' ')
modprobe forcefully_remove_bootfb bootfb_start=0x$(cut -d- -f1 <<< $BOOTFB) bootfb_end=0x$(cut -d- -f2 <<< $BOOTFB)
rmmod forcefully_remove_bootfb
