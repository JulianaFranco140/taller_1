import 'package:flutter/material.dart';

// TALLER 1
// Trabaja este archivo dentro de lib/main.dart de un proyecto Flutter ya creado.
// No necesitas construir interfaz grafica. La salida se observa en la consola.
// Alcance: variables, tipos, operadores, condicionales, ciclos, listas,
// funciones, print(), var, final y const.

void main() {
  // LISTAS PARALELAS:
  // Los valores que comparten el mismo indice pertenecen a una sola entrega.
  // Ejemplo: el indice 3 representa la entrega 504 en todas las listas.
  // Para agregar la entrega 508, agrega un valor al final de CADA lista.
  List<int> ids = [501, 502, 503, 504, 505, 506, 507];

  List<String> tiposCarga = [
    'Vacuna',
    'Insulina',
    'Alimento',
    'Vacuna',
    'Muestra',
    'Insulina',
    'Vacuna',
  ];

  List<int> temperaturas = [5, 11, -25, 1, 14, 7, 9];
  List<int> retrasosMinutos = [10, 45, 20, 65, 35, -5, 90];
  List<int> baterias = [70, 35, 50, 15, 80, 90, 10];
  List<bool> pendientesSync = [
    false,
    true,
    false,
    true,
    false,
    true,
    false,
  ];

  // Prueba temporal de validarLectura y estadoSincronizacion.
  // El resto del TODO (puntaje, clasificacion, resumen) sigue pendiente.
  for (int i = 0; i < ids.length; i++) {
    final int id = ids[i];
    final int temperatura = temperaturas[i];
    final int retraso = retrasosMinutos[i];
    final int bateria = baterias[i];
    final bool pendiente = pendientesSync[i];

    final bool esValida = validarLectura(temperatura, retraso, bateria);
    final String sincronizacion = estadoSincronizacion(pendiente);

    if (esValida) {
      print('ID $id: valida | Sincronizacion: $sincronizacion');
    } else {
      print('ID $id: invalida (temp=$temperatura, retraso=$retraso, bateria=$bateria)');
    }
  }

  // TODO:
  // 1. Recorrer todas las entregas.
  // 2. Descartar lecturas invalidas e indicar la causa.
  // 3. Calcular puntaje, clasificacion y estado de sincronizacion.
  // 4. Imprimir el resultado de cada entrega valida.
  // 5. Construir el resumen final solicitado.
}


bool validarLectura(
  int temperatura,
  int retrasoMinutos,
  int bateria,
) {
  const int temperaturaMinima = -20;
  const int temperaturaMaxima = 50;
  const int bateriaMinima = 0;
  const int bateriaMaxima = 100;

  final bool temperaturaValida =
      temperatura >= temperaturaMinima && temperatura <= temperaturaMaxima;
  final bool retrasoValido = retrasoMinutos >= 0;
  final bool bateriaValida =
      bateria >= bateriaMinima && bateria <= bateriaMaxima;

  return temperaturaValida && retrasoValido && bateriaValida;
}

int calcularPuntajeRiesgo(
  String tipoCarga,
  int temperatura,
  int retrasoMinutos,
  int bateria,
  bool pendienteSync,
) {
  // TODO
  return 0;
}

String clasificarRiesgo(int puntaje) {
  // TODO
  return '';
}

String estadoSincronizacion(bool pendiente) {
  return pendiente ? 'Pendiente de sincronizacion' : 'Sincronizado';
}
