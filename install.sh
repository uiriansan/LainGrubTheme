#!/usr/bin/bash

SHPATH=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

sudo cp -r -f $SHPATH/lain /boot/grub/themes/
sudo sed -i 's/^.*GRUB_THEME=.*/GRUB_THEME="\/boot\/grub\/themes\/lain\/theme.txt"/g' /etc/default/grub

echo -e "\e[32m\e[1mGRUB theme installed!\e[0m"
echo "Consider running `patch_entries.sh`. Read https://github.com/uiriansan/LainGrubTheme/blob/main/README.md to see what it does."
