<img src="./wiki/preview.png" width="100%" />

This theme was designed for a 1920x1080 display. Refer to the [wiki](https://github.com/uiriansan/LainGrubTheme/wiki/Customizing#resolution) to see how to customize it for a different resolution.

# Installation
```bash
$ git clone https://github.com/uiriansan/LainGrubTheme && cd LainGrubTheme && ./install.sh | bash
```

### Manual installation
1. Clone this repo:
> [!NOTE]
> You can also download the compressed files from the [latest release](https://github.com/uiriansan/LainGrubTheme/releases/latest).
```bash
$ git clone --depth=1 https://github.com/uiriansan/LainGrubTheme.git
$ cd LainGrubTheme
```
2. Copy ```lain/``` into ```/boot/grub/themes/```:
```bash
$ sudo cp -rf lain /boot/grub/themes/
```
3. In ```/etc/default/grub```, uncomment the line that says "GRUB_THEME" and add the path to ```theme.txt```:
```bash
$ sudoedit /etc/default/grub

# It should look like this:
GRUB_THEME="/boot/grub/themes/lain/theme.txt"
```
4. Set ```GRUB_GFXMODE=``` to the correct resolution:
```bash
GRUB_GFXMODE=1920x1080
```
5. Optionally, make Grub remember the last option selected by modifying ```GRUB_DEFAULT=``` and ```GRUB_SAVEDEFAULT=```:
```bash
GRUB_DEFAULT=saved
GRUB_SAVEDEFAULT=true # Make sure to uncomment this one.
```

# Patch GRUB entries
There are some limitations to what a GRUB theme can do. By default, some GRUB entries have really long names and no icons (e.g. os-prober entries and Advanced options). To change this, we need to edit some GRUB scripts located in ```/etc/grub.d/```. Run ```patch_entries.sh``` to apply some changes automatically.

### Patching manually
Read the [wiki](https://github.com/uiriansan/LainGrubTheme/wiki/Patch-entries#patching-manually).

# Customizing
There is a quick guide on how to customize this theme further in the [wiki](https://github.com/uiriansan/LainGrubTheme/wiki/Customizing)

# Special thanks
- [AdisonCavani/distro-grub-themes](https://github.com/AdisonCavani/distro-grub-themes): Code reference;
- [fauux.neocities.org](https://fauux.neocities.org/): Lain banner image.
