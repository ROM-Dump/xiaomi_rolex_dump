#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32632142:0c442660360179f7edb80a4db6f8cd376f303d53; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:30549322:17f7012fb0f6cb0848f3838776249b60c0071859 EMMC:/dev/block/bootdevice/by-name/recovery 0c442660360179f7edb80a4db6f8cd376f303d53 32632142 17f7012fb0f6cb0848f3838776249b60c0071859:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
