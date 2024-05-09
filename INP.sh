#!/bin/bash

# Función para mostrar el menú y obtener la selección del usuario
menu() {
    echo "Selecciona un navegador para instalar:"
    echo "1. Google Chrome"
    echo "2. Mozilla Firefox"
    echo "3. Microsoft Edge"
    echo "4. Safari"
    echo "5. Opera"
    read -p "Ingresa el número correspondiente al navegador deseado: " opcion
}

# Función para instalar el navegador seleccionado
instalar_navegador() {
    case $1 in
        1)
            echo "Instalando Google Chrome..."
            sudo apt install google-chrome-stable
            ;;
        2)
            echo "Instalando Mozilla Firefox..."
            sudo apt install firefox
            ;;
        3)
            echo "Instalando Microsoft Edge..."
            sudo apt install microsoft-edge-dev
            ;;
        4)
            echo "Safari no está disponible para instalar en Linux."
            ;;
        5)
            echo "Instalando Opera..."
            sudo apt install opera-stable
            ;;
        *)
            echo "Opción no válida. Por favor, selecciona un número del 1 al 5."
            ;;
    esac
}

# Llamar a la función del menú
menu

# Llamar a la función para instalar el navegador seleccionado
instalar_navegador $opcion
