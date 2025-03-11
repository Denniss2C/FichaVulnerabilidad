import 'package:flutter/material.dart';

class EncuestaNav extends StatelessWidget {
  final int paginaActual;
  final int totalPaginas;
  final VoidCallback? onAnterior;
  final VoidCallback? onSiguiente;
  final VoidCallback? onGuardar;

  const EncuestaNav({
    super.key,
    required this.paginaActual,
    required this.totalPaginas,
    this.onAnterior,
    this.onSiguiente,
    this.onGuardar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Botón "Anterior" solo si no estamos en la primera página
          if (paginaActual > 0)
            ElevatedButton(
              onPressed: onAnterior,
              child: const Text("Anterior"),
            ),

          // Botón "Siguiente" si no estamos en la última página
          if (paginaActual < totalPaginas - 1)
            ElevatedButton(
              onPressed: onSiguiente,
              child: const Text("Siguiente"),
            ),

          // Botón "Guardar" solo en la última página
          if (paginaActual == totalPaginas - 1)
            ElevatedButton(
              onPressed: onGuardar,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text("Guardar"),
            ),
        ],
      ),
    );
  }
}
