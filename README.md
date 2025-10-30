# **Práctica: Importador CLI de Rolodex a CSV**

![Rolodex CLI Banner](images/rolodex-banner.jpg)

## **🎯 Tu Reto**

Desarrollar una aplicación de línea de comandos (CLI) en **Java** capaz de rescatar los contactos de un viejo Rolodex físico y digitalizarlos en un práctico archivo CSV.

## **📋 Contexto del Proyecto**

En la era digital, muchas empresas y profesionales aún conservan información valiosa en formatos analógicos. Tu misión es crear una herramienta que permita la transición de estos datos al mundo digital de manera eficiente y segura.

![Flujo de Datos](images/data-flow-diagram.png)

## **✨ Funcionalidades Clave**

### **1. Interfaz Interactiva**
La aplicación debe guiar al usuario a través de la consola para introducir los contactos uno por uno de forma intuitiva y clara.

### **2. Datos a Capturar**
Por cada contacto, el sistema debe solicitar:
- **Nombre completo**
- **Número de teléfono**
- **Dirección de email**

### **3. Gestión Automática del CSV**
- Creará y gestionará automáticamente el archivo CSV
- Asegurará la inclusión de encabezados correctos: `Nombre,Telefono,Email`
- Validará la estructura del archivo antes de cada escritura

### **4. ¡Modo Maratón!**
La aplicación debe funcionar en un **bucle continuo**, permitiendo al usuario añadir múltiples contactos en una sola sesión sin necesidad de reiniciar el programa.

### **5. Manejo Robusto de Datos**
- Gestión correcta del "escapado" de caracteres especiales (ej. comas en un nombre)
- Validación de formato de email
- Normalización de números de teléfono
- Prevención de duplicados (opcional)
- Mantenimiento de la integridad del archivo CSV

### **6. Comando de Salida Elegante**
El usuario debe poder escribir `exit` o `salir` en cualquier momento para finalizar el programa de forma limpia y segura, guardando todos los cambios realizados.

![Aplicación en Funcionamiento](images/app-screenshot.jpg)

## **🔧 Requisitos Técnicos**

### **Obligatorios**
- **Lenguaje:** Java (versión 8 o superior)
- **Paradigma:** Programación estructurada (sin POO)
- **Estructuras de datos:** Arrays clásicos (no usar listas ni colecciones)
- **Librerías:** Solo bibliotecas estándar de Java (java.io, java.util.Scanner)
- **Entrada/Salida:** Consola estándar (System.in / System.out)

### **Formato del Archivo CSV**
```csv
Nombre,Telefono,Email
Victor Frankenstein,5557762323,doctor@nodedojo.com
Jane Smith,555-123-4567,jane.smith@example.com
"Doe, John Jr.",555-999-8888,john.doe@test.com
```

### **Estructura de Directorios Sugerida**
```
rolodex-cli/
├── RolodexImporter.java    # Archivo principal del programa
├── writable/
│   └── contacts.csv         # Archivo CSV generado
└── README.md                # Documentación
```

## **📝 Criterios de Evaluación**

| Criterio | Peso | Descripción |
|----------|------|-------------|
| **Funcionalidad** | 40% | La aplicación cumple con todos los requisitos especificados |
| **Calidad del Código** | 25% | Código limpio, bien estructurado y comentado |
| **Manejo de Errores** | 20% | Validaciones y gestión adecuada de excepciones |
| **Experiencia de Usuario** | 10% | Interfaz clara, mensajes informativos y flujo intuitivo |
| **Documentación** | 5% | README completo con instrucciones de uso |

## **🚀 Ejemplo de Ejecución**

```bash
$ javac RolodexImporter.java
$ java RolodexImporter

=== Importador CLI de Rolodex a CSV ===
Archivo CSV inicializado: writable/contacts.csv

Introduce un nuevo contacto:
> Nombre completo: Ana Pérez
> Teléfono: 555-123-4567
> Email: ana.perez@example.com
✓ Contacto guardado. ¿Añadir otro? (s/n)

> Opción: s

Introduce un nuevo contacto:
> Nombre completo: exit

Saliendo de la aplicación. Contactos guardados en writable/contacts.csv
Total de contactos procesados: 1
```

## **💡 Consejos y Buenas Prácticas**

1. **Validación de Entrada:** Implementa validaciones para cada campo antes de guardar
2. **Mensajes Claros:** Proporciona feedback constante al usuario sobre el estado de las operaciones
3. **Manejo de Excepciones:** Captura y gestiona adecuadamente errores de I/O
4. **Código Modular:** Aunque no uses POO, organiza tu código en funciones/métodos reutilizables
5. **Testing:** Prueba casos extremos (nombres con comas, emails inválidos, etc.)

## **🎓 Recursos Adicionales**

- [Especificación RFC 4180 para archivos CSV](https://tools.ietf.org/html/rfc4180)
- [Documentación de java.io](https://docs.oracle.com/javase/8/docs/api/java/io/package-summary.html)
- [Guía de BufferedReader y BufferedWriter](https://docs.oracle.com/javase/tutorial/essential/io/)

## **📦 Entrega**

1. Código fuente completo (`RolodexImporter.java`)
2. Archivo README.md con:
   - Instrucciones de compilación y ejecución
   - Diagrama de flujo del programa
   - Pseudocódigo (estilo Python-Pascal)
3. Archivo CSV de ejemplo con al menos 3 contactos de prueba
4. (Opcional) Script de ejecución automatizada

## **🏆 Desafíos Adicionales (Opcional)**

Para estudiantes que quieran ir más allá:

- **Nivel 1:** Implementar búsqueda de contactos existentes
- **Nivel 2:** Añadir opción de editar o eliminar contactos
- **Nivel 3:** Exportar a múltiples formatos (JSON, XML)
- **Nivel 4:** Implementar importación desde CSV existente
- **Nivel 5:** Añadir cifrado básico de datos sensibles

---

## **📄 Licencia**

Este proyecto es material educativo de libre uso para fines académicos.

**¡Buena suerte con tu implementación!** 🚀
