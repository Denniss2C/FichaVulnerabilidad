import 'package:flutter/material.dart';

class PreguntaOpcion extends StatefulWidget {
  final String pregunta;
  final List<String> opciones;
  final Function(String) onSelected;

  const PreguntaOpcion(
      {super.key,
      required this.pregunta,
      required this.opciones,
      required this.onSelected});

  @override
  _PreguntaOpcionState createState() => _PreguntaOpcionState();
}

class _PreguntaOpcionState extends State<PreguntaOpcion> {
  String? seleccionada;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.pregunta,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Column(
          children: widget.opciones.map((opcion) {
            return RadioListTile(
              title: Text(opcion),
              value: opcion,
              groupValue: seleccionada,
              onChanged: (value) {
                setState(() {
                  seleccionada = value.toString();
                });
                widget.onSelected(value.toString());
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
