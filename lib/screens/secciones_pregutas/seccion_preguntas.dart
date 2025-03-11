import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/preguntas.dart';
import '../../utils/provider/encuestaProvider.dart';

class SeccionPreguntas extends StatelessWidget {
  final int seccionIndex;

  const SeccionPreguntas({super.key, required this.seccionIndex});

  @override
  Widget build(BuildContext context) {
    final encuestaProvider = Provider.of<EncuestaProvider>(context);

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: preguntasPorSeccion[seccionIndex].length,
      itemBuilder: (context, index) {
        final pregunta = preguntasPorSeccion[seccionIndex][index];

        Widget preguntaWidget;

        if (pregunta.tipo == 'texto') {
          // Pregunta de texto
          preguntaWidget = TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: pregunta.texto,
            ),
            onChanged: (value) {
              encuestaProvider.actualizarRespuesta(seccionIndex, index, value);
            },
          );
        } else if (pregunta.tipo == 'opcion') {
          // Pregunta de opción única (Radio)
          preguntaWidget = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pregunta.texto, style: const TextStyle(fontSize: 18)),
              ...pregunta.opciones.map((opcion) => RadioListTile<String>(
                    title: Text(opcion),
                    value: opcion,
                    groupValue: encuestaProvider.respuestas[seccionIndex]
                        [index],
                    onChanged: (value) {
                      encuestaProvider.actualizarRespuesta(
                          seccionIndex, index, value!);
                    },
                  )),
            ],
          );
        } else if (pregunta.tipo == 'multiple') {
          // Pregunta de selección múltiple (Checkbox)
          List<String> seleccionadas = List<String>.from(
              encuestaProvider.respuestas[seccionIndex][index] ?? []);

          preguntaWidget = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pregunta.texto, style: const TextStyle(fontSize: 18)),
              ...pregunta.opciones.map((opcion) => CheckboxListTile(
                    title: Text(opcion),
                    value: seleccionadas.contains(opcion),
                    onChanged: (bool? value) {
                      if (value == true) {
                        seleccionadas.add(opcion);
                      } else {
                        seleccionadas.remove(opcion);
                      }
                      encuestaProvider.actualizarRespuesta(
                          seccionIndex, index, seleccionadas);
                    },
                  )),
            ],
          );
        } else {
          preguntaWidget = const Text('Tipo de pregunta no soportado');
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            preguntaWidget,
            const Divider(),
          ],
        );
      },
    );
  }
}
