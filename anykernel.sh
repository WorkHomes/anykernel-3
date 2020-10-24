# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Cunyuk kernel by Erwin
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=kagura
device.name2=Sony Xperia XZ
device.name3=
device.name4=
device.name5=
supported.versions=
supported.patchlevels=
'; } # end properties


block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

ui_print "Welcome To Cunyuk"
ui_print "    Puki - Max   "
ui_print "********************"
ui_print "*********************"

## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
chmod -R 750 $ramdisk/*;
chmod -R 755 $ramdisk/sbin/*;
chmod +x $ramdisk/sbin/spa
chown -R root:root $ramdisk/*;

## AnyKernel install
dump_boot;


write_boot;
## end install

