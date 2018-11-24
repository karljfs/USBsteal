@echo off


::Change the color.
color 0e

::Get all usernames from computer.
DIR C:\Users> usernames.txt
E:

::Get private IP.
echo 0%% Updating your system...
IPCONFIG /all > myIP.txt

::Get the MAC addresses.
echo 10%% It will take about few minutes, please be patient...
GETMAC > mac.txt
echo 20%% is done, please wait...
echo 30%% is done, please wait...
echo 40%% is done, please wait...

::Be sure the hostname was gotten.
echo 50%% is done, please wait...
echo 60%% is done, please wait...
HOSTNAME > hostnames.txt

::Get open ports.
echo 70%% is done, please wait...
NETSTAT > ports.txt

::Get computer specs.
echo 80%% Almost done...
echo 90%% Last step, it may take up to 1 minute...
msinfo32 /nfo info.nfo
echo Finished, Thank you for using Microsoft Windows!
echo Done, this window will close automatically.

::Poweroff the computer (to unmount your USB).
%windir%\System32\shutdown.exe -s -t 05

::End.
