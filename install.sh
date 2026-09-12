#!/bin/bash

#install WM

cd dwm

sudo make install

cd ..

cd st

sudo make install

cd ..

cd dmenu 

sudo make install

cd ..

cd slstatus

sudo make install

cd ..


echo "cd" >> ~/.xinitrc
echo "slstatus &" >> ~/.xinitrc
echo "exec dwm" >> ~/.xinitrc

#Install Nerd Font

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip -d JetBrainsMono
rm JetBrainsMono.zip
fc-cache -fv


#Matching bash prompt

sudo echo "export PS1='\[\e[38;5;175m\]\u@\h\[\e[0m\] \[\e[38;5;244m\]\W\[\e[0m\] \$ '" >> ~/.bashrc

source ~/.bashrc


echo "INSTALL FINISHED"
