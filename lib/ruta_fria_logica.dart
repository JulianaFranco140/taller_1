
String validarLectura(
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

  if (temperaturaValida == false){
    return 'La temperatura no es valida';
  }
  else if (retrasoValido == false){
    return 'El retraso no es valido';
  }
  else if (bateriaValida == false){
    return 'La bateria no es valida';
  }
  return 'La lectura es valida';
}


int calcularPuntajeRiesgo(
  String tipoCarga,
  int temperatura,
  int retrasoMinutos,
  int bateria,
  bool pendienteSync,
) {
  int puntaje = calcularpuntajetemperatura(temperatura) + calcularpuntajeretraso(retrasoMinutos) + calcularpuntajebateria(bateria) + calcularpuntajecarga(tipoCarga) + calcularpuntajependiente(pendienteSync);
  return puntaje;
}


  // Funcion para calcular el puntaje de la temperatura
int calcularpuntajetemperatura(int temperatura){
if (temperatura <0 && temperatura > 10){
  return 18;}
else if (temperatura < 2 && temperatura > 8){
  return 10;
}
return 0;
}


  // Funcion para calcular el puntaje de los retrasos
int calcularpuntajeretraso(int retrasoMinutos){
  if (retrasoMinutos >= 60 ){
    return 12;
  }
  else if (retrasoMinutos < 59 &&  retrasoMinutos> 30){
    return 8;
  }
  else if (retrasoMinutos < 29 &&  retrasoMinutos > 15){
    return 4;
  }
  return 0;
}


  // Funcion para calcular el puntaje de la bateria
int calcularpuntajebateria(int bateria){
  if (bateria < 20 ){
    return 8;
  }
  else if (bateria > 20 && bateria <39){
    return 4;
  }
  return 0;
}


  // Funcion para calcular el puntaje de la carga
int calcularpuntajecarga(String tipoCarga){
  if (tipoCarga == 'Vacuna'){
    return 5;
  }
  return 0;
}

int calcularpuntajependiente(bool pendienteSync){
  if (pendienteSync == true){
    return 3;
  }
  return 0;
}

  // Funcion para clasificar el riesgo
String clasificarRiesgo(int puntaje) {{
  if (puntaje >= 30 ) {
  return 'CRITICO';
}else if (puntaje >= 20){
  return 'ALTO';
}else if (puntaje >= 10)
{return 'MEDIO';}
}
return 'BAJO';
}


String estadoSincronizacion(bool pendiente) {
  return pendiente ? 'Pendiente de sincronizacion' : 'Sincronizado';
}
