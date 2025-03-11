import 'package:flutter/material.dart';

class PreguntaSeleccion extends StatefulWidget {
  final String pregunta;
  final List<String> opciones;
  final Function(List<String>) onSelected;

  const PreguntaSeleccion(
      {super.key,
      required this.pregunta,
      required this.opciones,
      required this.onSelected});

  @override
  _PreguntaSeleccionState createState() => _PreguntaSeleccionState();
}

class _PreguntaSeleccionState extends State<PreguntaSeleccion> {
  List<String> seleccionadas = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.pregunta,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Column(
          children: widget.opciones.map((opcion) {
            return CheckboxListTile(
              title: Text(opcion),
              value: seleccionadas.contains(opcion),
              onChanged: (bool? value) {
                setState(() {
                  if (value == true) {
                    seleccionadas.add(opcion);
                  } else {
                    seleccionadas.remove(opcion);
                  }
                });
                widget.onSelected(seleccionadas);
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
