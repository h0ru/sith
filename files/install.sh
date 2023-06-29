#!/usr/bin/env bash

#Colors:
        Rd='\033[0;31m'    # Red
        Be='\033[0;34m'   # Blue
        Gn='\033[0;32m'  # Green
        We='\033[0;97m'  # White

echo -e "$We["$Rd"SITH Downloading"$We"]"

echo -e "$Be>$We sith"
wget -q "https://raw.githubusercontent.com/h0ru/sith/main/files/sith" -O sith ; chmod +x sith;
echo -e "$Gn finished $We"

echo -e "$Be>$We chacal-c2"
mkdir -p ~/.sith/chacal-c2 ; wget -q "https://raw.githubusercontent.com/h0ru/sith/main/files/chacal" -O chacal ; chmod +x chacal ; mv ./chacal ~/.sith/chacal-c2/ ; touch ~/.sith/chacal-c2/targets.txt;
echo -e "$Gn finished $We"

echo -e "$Be>$We myrshell"
wget -q "https://raw.githubusercontent.com/h0ru/myrshell/main/myrshell" -O myrshell ; chmod +x ./myrshell ; mv ./myrshell ~/.sith/
echo -e "$Gn finished $We"

echo -e "$Be>$We dragon"
mkdir -p ~/.sith/dragon ; wget -q "https://raw.githubusercontent.com/h0ru/sith/main/files/dragon" -O dragon ; chmod +x ./dragon ; mv ./dragon ~/.sith/
echo -e "$Gn finished $We"

echo -e "$Be>$We Move sith to /usr/local/bin/"
sudo mv sith /usr/local/bin
echo -e "$Gn finished $We"
