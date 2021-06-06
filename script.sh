#!/bin/bash

# Обновление системы, установка драйверов, компилятора, помощника AUR
sudo pacman-mirrors --fasttrack && sudo pacman -Syyu
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

# .Net
yay -S dotnet-sdk-bin
yay -S dotnet-host-bin
yay -S aspnet-runtime-bin

# установка Entity Framework
sudo dotnet tool install --global dotnet-ef

# Добавление EF в Path
cat << \EOF >> ~/.bash_profile
# Добавление средств пакета SDK для .NET Core
export PATH="$PATH:/root/.dotnet/tools"
EOF

# Fonts
yay -S ttf-ms-fonts
yay -S ttf-vista-fonts
yay -S nerd-fonts-sf-mono

# General soft
yay -S gedit
yay -S discord-ptb
yay -S vlc
yay -S qbittorrent
yay -S libreoffice-fresh

# Development
yay -S jetbrains-toolbox
yay -S mssql-server
sudo /opt/mssql/bin/mssql-conf setup
yay -S mono
yay -S make
yay -S cmake
yay -S nodejs
yay -S npm
npm install -g @angular/cli
yay -S pug

# Копирование проекта и начальная настройка
cd ~/
mkdir WebStormProjects
cd WebStormProjects
git clone https://github.com/syrok0010/Raduga
cd Raduga/WebUI/ClientApp
npm install

# Удалить ненужные пакеты
sudo pacman -Qtdq | sudo pacman -Rns -
