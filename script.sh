#!/bin/bash

# Обновление системы, установка драйверов, компилятора, помощника AUR
sudo pacman -Syyuu
sudo mhwd -a pci nonfree 0300
sudo pacman -S git
sudo pacman -S base-devel
sudo pacman -S yay

# Удаление ненужных системных программ
yay -Rsn yakuake
yay -Rsn kamera
yay -Rsn konversation
sudo pacman -Rsn manjaro-hello

# Установка нужных программ
yay -S dotnet-sdk-bin
yay -S dotnet-host-bin
yay -S aspnet-runtime-bin
yay -S ttf-ms-fonts
yay -S ttf-vista-fonts
yay -S nerd-fonts-sf-mono
yay -S jetbrains-toolbox
yay -S mssql-server
/opt/mssql/bin/mssql-conf setup
yay -S gedit
yay -S discord-ptb
yay -S pug
yay -S vlc
yay -S libreoffice-fresh
yay -S mono
yay -S make
yay -S cmake
yay -S qbittorrent
yay -S nodejs
yay -S npm
npm install -g @angular/cli
