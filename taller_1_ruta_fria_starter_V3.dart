// TALLER 1
// Trabaja este archivo dentro de lib/main.dart de un proyecto Flutter ya creado.
// No necesitas construir interfaz grafica. La salida se observa en la consola.
// Alcance: variables, tipos, operadores, condicionales, ciclos, listas,
// funciones, print(), var, final y const.

bool validarLectura(
  int temperatura,
  int retrasoMinutos,
  int bateria,
) {
  // TODO
  return false;
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
  // TODO
  return '';
}

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

  // TODO:
  // 1. Recorrer todas las entregas.
  // 2. Descartar lecturas invalidas e indicar la causa.
  // 3. Calcular puntaje, clasificacion y estado de sincronizacion.
  // 4. Imprimir el resultado de cada entrega valida.
  // 5. Construir el resumen final solicitado.
}
