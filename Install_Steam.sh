#!/bin/bash

# Script para instalar Steam y sus librerías en sistemas basados en Debian

# Verificar si el usuario tiene permisos de superusuario
if [ "$(id -u)" != "0" ]; then
  echo "Este script necesita ser ejecutado con privilegios de superusuario (root)." 1>&2
  exit 1
fi

# Actualizar lista de paquetes
sudo apt update

# Instalar las dependencias necesarias para Steam
sudo apt install -y libgl1-mesa-dri:i386 libgl1-mesa-glx:i386 libc6:i386

# Descargar e instalar Steam desde el repositorio oficial de Valve
sudo wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb -O /tmp/steam.deb
sudo dpkg -i /tmp/steam.deb

# Instalar dependencias adicionales recomendadas por Steam
sudo apt install -y -f

# Notificar al usuario que la instalación ha finalizado
sudo echo "Steam y sus librerías han sido instalados correctamente."

# Limpiar paquetes descargados que ya no son necesarios
sudo apt clean

# Salir con código de éxito
exit 0
