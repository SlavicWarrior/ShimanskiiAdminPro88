#!/bin/bash

echo "========================================"
echo "ShimanskiiAdminPro - Instalación"
echo "========================================"
echo

echo "Verificando Node.js..."
if ! command -v node &> /dev/null; then
    echo "ERROR: Node.js no está instalado."
    echo "Por favor, instala Node.js desde https://nodejs.org/"
    exit 1
fi

echo "Node.js encontrado."
echo

echo "Instalando dependencias..."
npm install
if [ $? -ne 0 ]; then
    echo "ERROR: Error al instalar dependencias."
    exit 1
fi

echo
echo "========================================"
echo "Instalación completada exitosamente!"
echo "========================================"
echo
echo "Para ejecutar la aplicación en modo desarrollo:"
echo "npm run electron-dev"
echo
echo "Para construir la aplicación:"
echo "npm run electron-pack"
echo
