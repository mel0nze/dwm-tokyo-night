#!/bin/bash

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

echo "exec dwm" >> ~/.xinitrc
echo "slstatus &" >> ~/.xinitrc
sudo echo "export PS1='\[\e[38;5;175m\]\u@\h\[\e[0m\] \[\e[38;5;244m\]\W\[\e[0m\] \$ '" >> ~/.bashrc

source ~/.bashrc

echo "INSTALL FINISHED"
