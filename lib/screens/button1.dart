import 'package:flutter/material.dart';

class NuevaEncuesta extends StatefulWidget {
  const NuevaEncuesta({super.key});
  static const String routeName = '/nueva_encuesta';

  @override
  State<NuevaEncuesta> createState() => _NuevaEncuestaState();
}

class _NuevaEncuestaState extends State<NuevaEncuesta> {
  @override
  Widget build(BuildContext context) {
    //poner el nombre en el medio

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nueva Encuesta'),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            color: Colors.blue,
            //texto
            child: const Center(
              child: Text(
                "Nueva Encuesta",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            //texto
            child: const Center(
              child: Text(
                "Nueva Encuesta",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
