# Instrucciones para Añadir las Imágenes

Por favor, guarda las siguientes imágenes en el directorio `images/`:

## Imágenes Necesarias:

1. **data-flow-diagram.png** - Diagrama de flujo de datos (Imagen 1)
   - Muestra el flujo: Rolodex físico → index.js → Command line → contacts.csv
   - Ubicación: `images/data-flow-diagram.png`

2. **app-screenshot.jpg** - Captura de la aplicación en funcionamiento (Imagen 2)
   - Muestra la interfaz CLI con el formulario de entrada
   - Ubicación: `images/app-screenshot.jpg`

3. **rolodex-banner.jpg** - Banner del proyecto (Imagen 3)
   - Muestra el Rolodex físico transformándose en datos digitales
   - Ubicación: `images/rolodex-banner.jpg`

## Comandos para Añadir las Imágenes:

Una vez que tengas las imágenes guardadas localmente, puedes añadirlas al repositorio con:

```bash
cd /home/maximo/repos/enunciado-rolodex-cli
git add images/
git commit -m "Add project images"
git push origin main
```

## Alternativa: Usar las Imágenes Directamente

Si las imágenes ya están en tu sistema, puedes copiarlas con:

```bash
cp /ruta/a/imagen1.png images/data-flow-diagram.png
cp /ruta/a/imagen2.jpg images/app-screenshot.jpg
cp /ruta/a/imagen3.jpg images/rolodex-banner.jpg
```
