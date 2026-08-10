# Taller 1 - Desarrollo Móvil (Dart & Flutter)

Primer taller de la asignatura de Desarrollo Móvil. El objetivo es practicar los
fundamentos del lenguaje Dart dentro de un proyecto Flutter ya creado, sin necesidad
de construir interfaz gráfica: toda la salida del ejercicio se observa por consola.

## Integrantes

- Juliana Franco Alzate
- Samuel David Gallego Meneses

## Descripción

El ejercicio se desarrolla en [`lib/main.dart`](lib/main.dart) y consiste en procesar
un conjunto de listas paralelas que representan entregas (ids, tipo de carga,
temperatura, retraso, batería y estado de sincronización), validando cada lectura,
calculando un puntaje y clasificación por entrega, y generando un resumen final.

Temas cubiertos:

- Variables (`var`, `final`, `const`) y tipos de datos
- Operadores y condicionales
- Ciclos y listas
- Funciones
- Salida por consola con `print()`

## Requisitos previos

- [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado y
  configurado (`flutter doctor` sin errores).

## Cómo ejecutarlo

1. Clonar el repositorio e ingresar a la carpeta del proyecto:

   ```bash
   git clone <url-del-repositorio>
   cd taller_1
   ```

2. Instalar las dependencias:

   ```bash
   flutter pub get
   ```

3. Ejecutar el proyecto en el dispositivo/plataforma disponible (por ejemplo,
   Linux, Windows o Chrome). La salida del ejercicio se imprime en la consola
   donde se ejecuta el comando:

   ```bash
   flutter run -d linux    # o -d windows, -d chrome, según tu equipo
   ```

   También se puede listar los dispositivos disponibles con `flutter devices`.

## Estructura del proyecto

```
lib/
  main.dart   # Lógica del taller (variables, listas, funciones, etc.)
test/         # Pruebas del proyecto
```
