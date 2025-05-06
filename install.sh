#!/usr/bin/bash

bgreen="\033[1;32m"
bred="\033[1;31m"
ucyan="\033[4;36m"
reset="\033[0m"

SHPATH=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

sudo cp -r -f $SHPATH/lain /boot/grub/themes/
sudo sed -i 's/^.*GRUB_THEME=.*/GRUB_THEME="\/boot\/grub\/themes\/lain\/theme.txt"/g' /etc/default/grub

# Change resolution
sudo sed -i 's/^GRUB_GFXMODE=.*/GRUB_GFXMODE=1920x1080/g' /etc/default/grub

# Remember last boot entry
sudo sed -i 's/^GRUB_DEFAULT=.*/GRUB_DEFAULT=saved/g' /etc/default/grub
sudo sed -i 's/^#GRUB_SAVEDEFAULT=.*/GRUB_SAVEDEFAULT=true/g' /etc/default/grub

echo -e "${bgreen}GRUB theme installed!${reset}"
echo -e "Consider running${bred} \`patch_entries.sh\`${reset}. Read ${ucyan}https://github.com/uiriansan/LainGrubTheme/wiki/Patch-entries${reset} to see what it does."
