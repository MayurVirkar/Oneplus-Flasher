#!/bin/bash
fastboot devices
read -p "Press any key to continue"

fastboot flash modem NON-HLOS.bin
sleep 2
fastboot flash sbl1 sbl1.mbn
sleep 2
fastboot flash dbi sdi.mbn
sleep 2
fastboot flash aboot emmc_appsboot.mbn
sleep 2
fastboot flash rpm rpm.mbn
sleep 2
fastboot flash tz tz.mbn
sleep 2
fastboot flash LOGO logo.bin
sleep 2
fastboot flash oppostanvbk static_nvbk.bin
sleep 2
fastboot flash system system.img
sleep 2
fastboot flash userdata userdata_64G.img
sleep 2
fastboot flash boot boot.img
sleep 2
fastboot flash recovery recovery.img
sleep 2
fastboot flash cache cache.img
sleep 2
fastboot erase userdata
sleep 2
fastboot erase cache
sleep 2
read -p "Press any key to continue."
fastboot reboot
