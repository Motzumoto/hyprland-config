# My Hyprland Config
All support and usage directions will be for Arch-based systems. Any other linux distro I won't provide support for because I simply don't know how they would function.
Also, you need to be using the hyprland window manager. 
# Usage/Installation

I started with a hyprland starter, and I suggest you do the same as copying over my configs will be a **lot** easier.
Personally, I used [this one](https://github.com/mylinuxforwork/hyprland-starter) by mylinuxforwork
If you choose to use any other starter, a lot of my commands will **not** work as they require the scripts given with that specific starter.
### Note: I use zsh. You will need to move config variables I have in my zsh file to your respective file. 
## Run the following commands: 
(You don't need to install powerlevel10k manually, as it's done automatically in zshrc)

(Just `exec zsh` after you're done)
```shell
yay -S base-devel fftw alsa-lib iniparser pulseaudio pkgconf checkupdates-with-aur cliphist rofi hyprpicker alsa-utils headsetcontrol yad pscircle fastfetch
```
After you're done installing these packages, find where fastfetch is located and drop my files in your fastfetch folder.

## Install FastCat
required addon for fastfetch
```shell
cd ~ && git clone --depth 1 https://github.com/m3tozz/FastCat.git && cd FastCat && bash ./fastcat.sh --shell
```

# Services
Put the files in the services folder in `~/.config/systemd/user`

After you do that, you can run these commands to enable them:
```shell
systemctl --user daemon-reload
systemctl --user status pscircle-wallpaper.service
systemctl --user status pscircle-wallpaper.timer
```