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

# Special thanks
- [AdisonCavani/distro-grub-themes](https://github.com/AdisonCavani/distro-grub-themes): Code reference;
