# Embedded Controller for MSI laptops

## Disclaimer

This driver might not work on other laptops produced by MSI. Use it at your own risk, we are not responsible for any damage suffered.

Also, and until future enhancements, no DMI data is used to identify your laptop model. In the meantime, check the msi-ec.c file before using.

Changes were made for the Alpha 17 b5eek to read out the actual fan-speeds. Due changes in the structs it won't work with other models.

## Changes made
* fixed addresses of .rt_fan_speed_address = 0x71 » 0xcd and .rt_fan_speed_address  = 0x89 » 0xcb
* implemented fallback if ec-read fails or returns invalid data
* disabled mic-led

- `/sys/devices/platform/msi-ec/cpu/realtime_fan_speed`
  - Description: This entry reports the current cpu fan speed in rpm
  - Access: Read
  - Valid values: 1874 - ~5800

- `/sys/devices/platform/msi-ec/gpu/realtime_fan_speed`
  - Description: This entry reports the current gpu fan speed in rpm
  - Access: Read
  - Valid values: 0 - ~6100
