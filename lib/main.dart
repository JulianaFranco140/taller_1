
// TALLER 1
// Trabaja este archivo dentro de lib/main.dart de un proyecto Flutter ya creado.
// No necesitas construir interfaz grafica. La salida se observa en la consola.
// Alcance: variables, tipos, operadores, condicionales, ciclos, listas,
// funciones, print(), var, final y const.

import 'ruta_fria_logica.dart';

void main() {
  // LISTAS PARALELAS:
  // Los valores que comparten el mismo indice pertenecen a una sola entrega.
  // Ejemplo: el indice 3 representa la entrega 504 en todas las listas.
  // Para agregar la entrega 508, agrega un valor al final de CADA lista.
  List<int> ids = [501, 502, 503, 504, 505, 506, 507, 508];

  List<String> tiposCarga = [
    'Vacuna',
    'Insulina',
    'Alimento',
    'Vacuna',
    'Muestra',
    'Insulina',
    'Vacuna',
    'Vacuna',
  ];

  List<int> temperaturas = [5, 11, -25, 1, 14, 7, 9,5];
  List<int> retrasosMinutos = [10, 45, 20, 65, 35, -5, 90,41];
  List<int> baterias = [70, 35, 50, 15, 80, 90, 10,72];
  List<bool> pendientesSync = [
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    false,
  ];
  print('Taller 1_Gallego_Franco');
//prueba solo de un caso paso a paso
  final int id = ids[7];
  final int temperatura = temperaturas[7];
  final int retraso = retrasosMinutos[7];
  final int bateria = baterias[7];
  final bool pendiente = pendientesSync[7];
  final String esValida = validarLectura(temperatura, retraso, bateria);
  final String sincronizacion = estadoSincronizacion(pendiente);
  final String tipoCarga = tiposCarga[7];
  print('puntaje de temperatura: ${calcularpuntajetemperatura(temperatura)}');
  print('puntaje de retraso: ${calcularpuntajeretraso(retraso)}');
  print('puntaje de bateria: ${calcularpuntajebateria(bateria)}');
  print('puntaje de carga: ${calcularpuntajecarga(tipoCarga)}');
  print('puntaje de pendiente: ${calcularpuntajependiente(pendiente)}');
  print(esValida);
  final int puntaje = calcularpuntajetemperatura(temperatura) + calcularpuntajeretraso(retraso) + calcularpuntajebateria(bateria) + calcularpuntajecarga(tipoCarga) + calcularpuntajependiente(pendiente);
  
  final String clasificacion = clasificarRiesgo(puntaje);
  
  
  print('ID $id: valida | Sincronizacion: $sincronizacion, tipo de carga: $tipoCarga, temperatura: $temperatura, retraso: $retraso, bateria: $bateria, pendiente: $pendiente');
  print('Puntaje: $puntaje | Clasificacion: $clasificacion');
 
 












  // Prueba ciclo completo
  // El resto del TODO (puntaje, clasificacion, resumen) sigue pendiente.

var promedioPuntaje = 0;
var contadorvalidas = 0;
var contadorinvalidas = 0;
var idmayorpuntaje = 0;
var mayorpuntaje = 0;
var contadorvalidaspendientes = 0;


  for (int i = 0; i < ids.length; i++) {
    final int id = ids[i];
    final int temperatura = temperaturas[i];
    final int retraso = retrasosMinutos[i];
    final int bateria = baterias[i];
    final bool pendiente = pendientesSync[i];
    final String tipoCarga = tiposCarga[i];
    final String esValida = validarLectura(temperatura, retraso, bateria);
    final String sincronizacion = estadoSincronizacion(pendiente);
    if (esValida == 'La lectura es valida') {
      print('ID $id: valida | Sincronizacion: $sincronizacion, tipo de carga: $tipoCarga, temperatura: $temperatura, retraso: $retraso, bateria: $bateria, pendiente: $pendiente');
      final int puntaje = calcularpuntajetemperatura(temperatura) + calcularpuntajeretraso(retraso) + calcularpuntajebateria(bateria) + calcularpuntajecarga(tipoCarga) + calcularpuntajependiente(pendiente);
      final String clasificacion = clasificarRiesgo(puntaje);
      print('Puntaje: $puntaje | Clasificacion: $clasificacion');
    
    promedioPuntaje += puntaje;
    contadorvalidas+=1;
    if (puntaje > mayorpuntaje) {
      mayorpuntaje = puntaje;
      idmayorpuntaje = id;
    }
    if (pendiente) {
      contadorvalidaspendientes+=1;
    }   
    } 
      
    
    
    
    else {
      print('ID $id: invalida $esValida');
      contadorinvalidas+=1;
    }
  }

print('Promedio de puntaje: ${promedioPuntaje / contadorvalidas}');
print('ID con mayor puntaje: $idmayorpuntaje con $mayorpuntaje puntos');
print('Cantidad de validas: $contadorvalidas');
print('Cantidad de invalidas: $contadorinvalidas');
print('Cantidad de validas pendientes: $contadorvalidaspendientes');



}
 
 
 
 
 
 
 
