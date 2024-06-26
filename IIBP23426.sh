#!/bin/bash

# Instalar Steam
sudo apt update
sudo dpkg --add-architecture i386
sudo apt-get update  
sudo apt-get upgrade
sudo apt-get install libgl1-mesa-glx
sudo apt-get install libgl1-mesa-glx:i386
sudo wget https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb -O /tmp/steam.deb
sudo dpkg --install /tmp/steam.deb 

# Configurar el inicio automático en el modo Big Picture de Steam
echo "Exec=steam -bigpicture" >> ~/.config/autostart/steam.desktop

# Informar al usuario sobre la configuración realizada
echo "Steam se ha instalado y configurado para iniciar automáticamente en el modo Big Picture al arrancar."
echo "Por favor, reinicia tu sistema para aplicar los cambios."
