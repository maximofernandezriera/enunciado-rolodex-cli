#!/bin/bash
# Script para añadir las imágenes al repositorio

echo "=== Añadir Imágenes al Repositorio ==="
echo ""
echo "Este script te ayudará a añadir las 3 imágenes necesarias."
echo ""

# Función para copiar imagen
copy_image() {
    local source=$1
    local dest=$2
    local name=$3
    
    if [ -f "$source" ]; then
        cp "$source" "$dest"
        echo "✓ $name copiada correctamente"
        return 0
    else
        echo "✗ No se encontró: $source"
        return 1
    fi
}

# Solicitar rutas de las imágenes
echo "Por favor, proporciona las rutas de las imágenes:"
echo ""

read -p "Ruta de la imagen del diagrama de flujo: " img1
copy_image "$img1" "images/data-flow-diagram.png" "Diagrama de flujo"

read -p "Ruta de la captura de la aplicación: " img2
copy_image "$img2" "images/app-screenshot.jpg" "Captura de aplicación"

read -p "Ruta del banner del proyecto: " img3
copy_image "$img3" "images/rolodex-banner.jpg" "Banner del proyecto"

echo ""
echo "=== Subiendo cambios a GitHub ==="

git add images/
git commit -m "Add project images: diagrams and screenshots"
git push origin main

echo ""
echo "✓ ¡Imágenes añadidas y subidas al repositorio!"
