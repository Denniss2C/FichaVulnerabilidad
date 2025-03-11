import 'package:fichavulnerabilidad/data/preguntas.dart';
import 'package:flutter/material.dart';

class EncuestaProvider extends ChangeNotifier {
  List<List<dynamic>> respuestas = List.generate(
    preguntasPorSeccion.length,
    (index) => List.filled(preguntasPorSeccion[index].length, null),
  );

  void actualizarRespuesta(int seccion, int index, dynamic respuesta) {
    respuestas[seccion][index] = respuesta;
    notifyListeners();
  }

  void resetEncuesta() {
    respuestas = List.generate(
      preguntasPorSeccion.length,
      (index) => List.filled(preguntasPorSeccion[index].length, null),
    );
    notifyListeners();
  }

  /// ✅ Nueva función para verificar si todas las preguntas están respondidas
  bool todasLasPreguntasRespondidas() {
    for (var seccion in respuestas) {
      if (seccion.contains(null) || seccion.contains("")) {
        return false;
      }
    }
    return true;
  }
}
