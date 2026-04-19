# Nix'OS config

| Package       | Configuration | Decription                                                                       | Location                       |
|---------------|---------------|----------------------------------------------------------------------------------|--------------------------------|
| Neofetch      | ✅             | Displaing cute Rem in the terminal, showing characteristics. Uses the rempng.png | ./script/terminal/neofetch.nix |
| Zsh           | ✅             | Setting up hotkeys and aliases                                                   | ./script/terminal/zsh.nix      |
| Kitty         | ✅             | Configuring the visual apperance of the terminal                                 | ./script/terminal/kitty.nix    |
 | Redis         | ✅             | Programming package                                                              | ./script/packages/redis.nix    |
| PostgreSQL    | ✅             | Programming package                                                              | ./script/packages/database.nix |
 | Docker        | ❌             | Programming package. Package is installed nut not configured                     | ./script/packages/docker.nix   |             
| Intellij IDEA | ❌             | Java programming IDE                                                             | ./script/user.nix              |
###  When installing, do not delete the hardware-configuration.nix file in your configuration.
## What it looks like
![Image1](./src/image/screen.png)
## Kitty's Configuration
![Kitty](./src/image/kitty.png)
### Hot keys
- **ctrl+shift+z** new window
- **super+shift+n** new os window 
- **ctrl+shift+t** - new tab
- **ctrl+shift+q** - close tab
- **ctrl+shift+w** - close window
- **ctrl+shift+2** - next tab
- **ctrl+shift+1** - previous tab
### If you want to replace the image, put the png file in the folder, rename it to rempng.png
## Zsh's aliases
**ll** = ls -l \
**la** = ls -la \
**nix-up** = sudo nixos-rebuild switch \
**nix-l** = sudo nix-env --list-generations -p /nix/var/nix/profiles/system \
**nix-cl** = sudo nix-collect-garbage -d \
**zapret** = cd zapret && ./service.sh \
**c** = clear && neofetch \
**gs** = git status \
**ga** = git add \
**gc** = git commit -m \
**gp** = git push 
### In order for zapret to work, you need to install zapret from github and rename the folder to a suitable name.
## KDE setup
- Supports WayLand, X11
- Kitty will be translucent only on Wayland
- Processes of any terminals (outside of other applications) will call kitty
## Note: all the images that are used in the configs are not mine. they are borrowed from the open Internet. If you are the author, please write. I'll mark you in the repository.
## The configuration file was made for me personally by me. If you're going to change your username, I'm sorry. This can make your Nix'os experience more difficult or worse. I tried to add all the configs with the name to user.nix.
