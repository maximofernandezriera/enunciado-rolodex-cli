# 📸 Cómo Añadir las Imágenes al Repositorio

## Opción 1: Usando el Script Automatizado

```bash
cd /home/maximo/repos/enunciado-rolodex-cli
./add-images.sh
```

El script te pedirá las rutas de las 3 imágenes y las subirá automáticamente.

## Opción 2: Manualmente

### Paso 1: Guarda las imágenes en el directorio correcto

Las imágenes que subiste en el chat deben guardarse con estos nombres:

1. **Imagen 1** (Diagrama de flujo) → `images/data-flow-diagram.png`
2. **Imagen 2** (Aplicación funcionando) → `images/app-screenshot.jpg`
3. **Imagen 3** (Banner con Rolodex) → `images/rolodex-banner.jpg`

### Paso 2: Copia las imágenes

Si las imágenes están en tu carpeta de Descargas:

```bash
cd /home/maximo/repos/enunciado-rolodex-cli

# Copia las imágenes (ajusta las rutas según donde estén)
cp ~/Descargas/imagen1.png images/data-flow-diagram.png
cp ~/Descargas/imagen2.jpg images/app-screenshot.jpg
cp ~/Descargas/imagen3.jpg images/rolodex-banner.jpg
```

### Paso 3: Sube los cambios a GitHub

```bash
git add images/
git commit -m "Add project images: diagrams and screenshots"
git push origin main
```

## Opción 3: Subir Directamente desde GitHub

1. Ve a https://github.com/maximofernandezriera/enunciado-rolodex-cli
2. Navega a la carpeta `images/`
3. Haz clic en "Add file" → "Upload files"
4. Arrastra las 3 imágenes
5. Asegúrate de renombrarlas correctamente:
   - `data-flow-diagram.png`
   - `app-screenshot.jpg`
   - `rolodex-banner.jpg`
6. Haz commit de los cambios

## Verificación

Una vez subidas las imágenes, el README.md mostrará:
- ✅ Banner del proyecto en la parte superior
- ✅ Diagrama de flujo de datos en la sección de contexto
- ✅ Captura de la aplicación funcionando

---

**Nota:** Las imágenes están referenciadas en el README.md con rutas relativas, por lo que deben estar exactamente en `images/` con los nombres especificados.
