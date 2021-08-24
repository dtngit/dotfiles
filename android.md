```
sudo apt-get install android-tools-adb
Print a list of connected devices: adb devices
Kill the ADB server: adb kill-server
cd C:\Users\Duy\AppData\Local\Android\Sdk\platform-tools\
adb connect 192.168.1.37:5555
adb -s 192.168.1.37:5555 install C:\Users\Duy\Downloads\smarttube_beta.apk
```
https://www.youtube.com/watch?v=TtLrLkWhUpA

## control android
```
sudo apt-get install scrcpy
adb connect 192.168.1.37:5555
scrcpy
```
## uninstall apps
```
adb shell su 0 pm list packages
adb uninstall com.android.calculator2
```
## remove system apps
```
adb shell
pm list packages
pm uninstall -k --user 0 com.google.android.youtube
```
## Re-install a previously removed app
```
adb shell
pm install-existing com.google.android.youtube
```

```
cd C:\Users\Duy\AppData\Local\Android\Sdk\platform-tools\
cd C:\Program Files\Xamarin Android Player\minimal_adb

adb pull /sdcard/Download/0599bacf5b714a78844a2caf45d41db3.pdf C:\Users\Duy\Desktop

adb push C:\Users\Duy\Desktop\GooglePlay\6.0\gapps-L-4-21-15.zip /sdcard/Download

adb push C:\Users\Duy\Desktop\GooglePlay\6.0\benzo-gapps-M-20151011-signed-chroma-r3.zip /sdcard/Download

adb shell

install_zip.sh /sdcard/Download/gapps-L-4-21-15.zip

reboot

install_zip.sh /sdcard/Download/benzo-gapps-M-20151011-signed-chroma-r3.zip

adb -s 10.0.0.49:5555 install -r C:\Users\Duy\Desktop\GooglePlay\6.0\com.google.android.gms_11.9.51_(470-177350961)-11951470_minAPI23(x86)(nodpi)_apkmirror.com.apk

adb -s 10.0.0.49:5555 install C:\Users\Duy\Desktop\GooglePlay\6.0\v4.23.2_apkpure.com.apk
```
## Disable the navigation bar
```
adb shell wm overscan 0,0,0,-190
```
## Get back the navigation bar
```
adb shell wm overscan 0,0,0,0
```
