import 'package:fichavulnerabilidad/utils/ui/ui.dart';
import 'package:flutter/material.dart';

import 'seccion_preguntas.dart';

class DesarrolloInfantil extends StatelessWidget {
  const DesarrolloInfantil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Encabezado con título
          Container(
            height: TrackingDimens.dimen_64,
            color: TrackingColors.lightGrey,
            child: Center(
              child: Text(
                "Desarrollo Infantil",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: TrackingColors.blanco,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
              height: 10), // Espacio entre el encabezado y las preguntas
          // Sección de preguntas
          const Expanded(
            child: SeccionPreguntas(seccionIndex: 2),
          ),
        ],
      ),
    );
  }
}
