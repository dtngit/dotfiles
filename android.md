cd C:\Users\Duy\AppData\Local\Android\Sdk\platform-tools\
cd C:\Program Files\Xamarin Android Player\minimal_adb

adb connect 10.71.34.101:5555

adb push C:\Users\Duy\Desktop\pic\s-l1600.jpg /sdcard/Pictures
adb push C:\Users\Duy\Desktop\pic\s-l1601.jpg /sdcard/Pictures
adb push C:\Users\Duy\Desktop\pic\s-l1602.jpg /sdcard/Pictures

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
cd C:\Users\Duy\AppData\Local\Android\Sdk\platform-tools\
adb connect 192.168.1.37:5555
adb -s 192.168.1.37:5555 install C:\Users\Duy\Downloads\smarttube_beta.apk
```
https://www.youtube.com/watch?v=TtLrLkWhUpA


```
apt install scrcpy
adb connect 10.71.34.101:5555
scrcpy
```
