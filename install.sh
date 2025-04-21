#!/usr/bin/bash

SHPATH=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

sudo cp -r -f $SHPATH/lain /boot/grub/themes/
sudo sed -i 's/^.*GRUB_THEME=.*/GRUB_THEME="\/boot\/grub\/themes\/lain\/theme.txt"/g' /etc/default/grub

# Change resolution
sudo sed -i 's/^GRUB_GFXMODE=.*/GRUB_GFXMODE=1920x1080/g' /etc/default/grub

# Remember last boot entry
sudo sed -i 's/^GRUB_DEFAULT=.*/GRUB_DEFAULT=saved/g' /etc/default/grub
sudo sed -i 's/^#GRUB_SAVEDEFAULT=.*/GRUB_SAVEDEFAULT=true/g' /etc/default/grub

echo -e "\e[32m\e[1mGRUB theme installed!\e[0m"
echo "Consider running `patch_entries.sh`. \e[34mRead https://github.com/uiriansan/LainGrubTheme/wiki/Patch-entries\e[0m to see what it does."
