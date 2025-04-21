#!/usr/bin/bash

# Removing the partition names from os-prober entries
sudo sed -i 's/onstr="$(gettext_printf "(on %s)" "${DEVICE}")"/onstr=""/g' /etc/grub.d/30_os-prober

# Use short name for os-prober entries ("Windows" instead of "Windows Boot Manager")
sudo sed -i 's/LONGNAME="`echo ${OS} | cut -d '"'"':'"'"' -f 2 | tr '"'"'^'"'"' '"'"' '"'"'`"/LONGNAME="`echo ${OS} | cut -d '"'"':'"'"' -f 3 | tr '"'"'^'"'"' '"'"' '"'"'`"/g' /etc/grub.d/30_os-prober

# Move os-prober entries before Linux
sudo mv /etc/grub.d/30_os-prober /etc/grub.d/05_os-prober

# Add icon to "Advanced options"
# Change "Advanced options for OS" to "OS Options"
sudo sed -i 's/gettext_printf "Advanced options for %s" "\${OS}" | grub_quote)'"'"' /gettext_printf "Options for %s" "\${OS}" | cut -d '"'"' '"'"' -f1,2,3 | grub_quote)'"'"' --class advanced_options /g' /etc/grub.d/10_linux

# Add icon to "UEFI Firmware Settings"
sudo sed -i 's/menuentry '"'"'$LABEL'"'"' \\\$menuentry_id_option/menuentry '"'"'$LABEL'"'"' --class uefi_firmware_settings \\\$menuentry_id_option/g' /etc/grub.d/30_uefi-firmware

sudo grub-mkconfig -o /boot/grub/grub.cfg

echo -e "\e[32m\e[1mGRUB entries patched!\e[0m"
