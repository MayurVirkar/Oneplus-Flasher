#!/bin/bash
echo "###Oneplus One Flasher By MayurVirkar###"
echo "Make sure you run it as superuser"

fastboot devices
read -p "If you can see device connected then we are good to go!. Press any key to continue"

echo "Flashing Modem"
fastboot flash modem NON-HLOS.bin
sleep 2
echo "Flashing sbl1"
fastboot flash sbl1 sbl1.mbn
sleep 2
echo "Flashing dbi"
fastboot flash dbi sdi.mbn
sleep 2
echo "Flashing aboot"
fastboot flash aboot emmc_appsboot.mbn
sleep 2
echo "Flashing rpr"
fastboot flash rpm rpm.mbn
sleep 2
echo "Flashing tz"
fastboot flash tz tz.mbn
sleep 2
echo "Flashing LOGO"
fastboot flash LOGO logo.bin
sleep 2
echo "Flashing oppostanvbk"
fastboot flash oppostanvbk static_nvbk.bin
sleep 2
echo "Flashing system"
fastboot flash system system.img
sleep 2
echo "Flashing userdata"
fastboot flash userdata userdata_64G.img
sleep 2
echo "Flashing boot"
fastboot flash boot boot.img
sleep 2
echo "Flashing recovery"
fastboot flash recovery recovery.img
sleep 2
echo "Flashing cache"
fastboot flash cache cache.img
sleep 2
echo "Erasing userdata"
fastboot erase userdata
sleep 2
echo "Erasing cache"
fastboot erase cache
sleep 2
read -p "Done. Press any key to reboot cellphone"
fastboot reboot
