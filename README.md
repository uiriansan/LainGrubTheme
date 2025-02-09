<img src="./preview.png" width="100%" />

# Installation
```bash
$ git clone https://github.com/uiriansan/LainGrubTheme && cd LainGrubTheme && ./install.sh | bash
```

### Manual installation
1. Copy ```lain/``` into ```/boot/grub/themes/```:
```bash
$ sudo cp -r -f lain /boot/grub/themes/
```
2. In ```/etc/default/grub```, uncomment the line that says "GRUB_THEME" and add the path to ```theme.txt```:
```bash
$ sudoedit /etc/default/grub

# Here's how it should look like:
...
GRUB_THEME="/boot/grub/themes/lain/theme.txt"
```
### Patch GRUB entries
    There are some limits to what a GRUB theme can do. By default, some GRUB entries have really long names and no icons (e.g. os-prober entries and Advanced options). To change this, we need to edit some GRUB scripts located in ```/etc/grub.d/```. 
    \
    Run ```patch_entries.sh``` to automatically make GRUB look better:
    ```bash
    $ ./patch_entries.sh
    ```

    ### Patching manually
    Read the [wiki](https://github.com/uiriansan/LainGrubTheme/wiki/Patch-entries).

# Customizing
    There is a quick guide on how to customize this theme even further in the [wiki](https://github.com/uiriansan/LainGrubTheme/wiki/Customizing)

# Special thanks
- [AdisonCavani/distro-grub-themes](https://github.com/AdisonCavani/distro-grub-themes): Code reference;
- [fauux.neocities.org](https://fauux.neocities.org/): Lain banner image;
