import 'package:flutter/material.dart';

class PreguntaTexto extends StatelessWidget {
  final String pregunta;
  final Function(String) onChanged;

  const PreguntaTexto(
      {super.key, required this.pregunta, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(pregunta,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        TextField(
          decoration: const InputDecoration(
              border: OutlineInputBorder(), hintText: 'Escribe tu respuesta'),
          onChanged: onChanged,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
