This repo is a collection of the tools I use and some dotfiles and configuration files for those tools. 
# Table of contents
1. [Current setup](#current-setup)
    1. [Linux](#linux)
    2. [Mac](#mac)

# Current setup <a name="current-setup"></a>
## Linux <a name="linux"></a>
### Distro
I currently use [Linux Mint](https://linuxmint.com/) as my distro

### Terminal 
- [Alacritty](https://github.com/alacritty/alacritty) as the terminal application
- [fish](https://fishshell.com/) as the shell
    - [fisher](https://github.com/jorgebucaran/fisher) package manager for fish
    - [z](https://github.com/jethrokuan/z) fish port of z for directory jumping	
- [tmux](https://github.com/tmux/tmux/wiki) as the terminal multiplexer
- [DejaVuSansM Nerd Font](https://www.programmingfonts.org/#dejavu) as the font
- Tomorrow Night Bright as the fish theme 
- Minimalist as the fish prompt
- [Neovim](https://neovim.io/) as terminal editor


### Tools
- [Volta](https://volta.sh/) for managing JavaScript command-line tool versions.
- [powertop](https://wiki.archlinux.org/title/Powertop) an intel tool for measuring and minimising power consumption
- [TLP](https://linrunner.de/tlp/index.html) a tool for optimizing linux laptop battery life
- [The Fuck](https://github.com/nvbn/thefuck) a command-line tool to correct your previously inputted console command

#### powertop
Install powertop with your distro's package manager. e.g. 
```bash
sudo apt install powertop
```

If using a laptop you will need to calibrate powertop by running the following command while on battery power. Try to keep the laptop idle while this is happening. It will cycle through different systems and will likely turn on and off your display and wifi.

```bash
sudo powertop --calibrate
```

After calibration powertop will open in interactive mode. In the idle states tab you can see the various c states your processor is in. The higher the c state the more energy efficient the processor is running. There is also a tunable tab that shows recommended settings to improve power efficiency. You can use the following command to set all of these settings to their "Good" state meaning they are in the more power efficient mode.

```bash
sudo powertop --auto-tune
```

To ensure these settings are set every time the system boots enable the powertop service.

```bash
systemctl enable powertop
```

or 

```bash
systemctl enable powertop.service
```

I'm not sure which is the correct one or if it's a case where either work.

#### TLP
TLP is a powerful tool to help optimise battery life. There are plenty of great articles about using it and the config file for TLP is well commented for each setting. In general I would leave most of the settings at their defaults. Out of the box it should help with battery life but has lots of in depth configuration to tailor it to your system.

I've included my current tlp-conf file, this is specific to my laptop. You should always start with the defaults and customise to your system.

Install
```bash
sudo apt install tlp tlp-rdw
```

Enable TLP service
```bash
systemctl enable --now tlp.service
```

Links with more details:
- https://linuxconfig.org/how-to-optimize-laptop-battery-life-with-tlp-on-linux?swcfpc=1
- https://askubuntu.com/questions/285434/is-there-a-power-saving-application-similar-to-jupiter/285681#285681
- https://www.fosslinux.com/135830/how-to-fine-tune-power-management-in-ubuntu-using-tlp.htm

## Mac <a name="mac"></a>
### Terminal
- [iTerm2](https://iterm2.com/) as the terminal application
- [fish](https://fishshell.com/) as the shell
    - [fisher](https://github.com/jorgebucaran/fisher) package manager for fish
    - [z](https://github.com/jethrokuan/z) fish port of z for directory jumping	
- [tmux](https://github.com/tmux/tmux/wiki) as the terminal multiplexer
- [Hack Nerd Font](https://www.programmingfonts.org/#hack) as the font
- Tomorrow Night Bright as the fish theme 
- Minimalist as the fish prompt
- [Neovim](https://neovim.io/) as terminal editor

### Tools
- [Volta](https://volta.sh/) for managing JavaScript command-line tool versions.
- [The Fuck](https://github.com/nvbn/thefuck) a command-line tool to correct your previously inputted console command
- [Raycast](https://www.raycast.com/) a smart replacement for MacOS' spotlight tool
- [Karabiner-Elements](https://karabiner-elements.pqrs.org/) a keyboard customiser for MacOS
