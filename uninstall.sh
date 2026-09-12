#!/bin/bash

#WM

cd dwm && sudo make uninstall && cd ..
cd st && sudo make uninstall && cd ..
cd dmenu && sudo make uninstall && cd ..
cd slstatus && sudo make uninstall && cd ..

#Font and Config.

read -p "Also remove the Nerd Font and revert .bashrc/.xinitrc changes? (y/n) " confirm
if [ "$confirm" = "y" ]; then
    rm -rf ~/.local/share/fonts/JetBrainsMono
    fc-cache -fv

echo "Removing xinitrc/bashrc entries added by install.sh..."
sed -i '/^cd$/d; /^slstatus &$/d; /^exec dwm$/d' ~/.xinitrc
sed -i '/38;5;175m.*38;5;244m/d' ~/.bashrc

echo "Note: please review ~/.xinitrc and ~/.bashrc manually to confirm nothing unexpected was removed."

fi

echo "UNINSTALL FINISHED"
