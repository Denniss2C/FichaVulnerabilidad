import 'package:flutter/material.dart';

class EncuestaResgistrada extends StatefulWidget {
  const EncuestaResgistrada({super.key});
  static const String routeName = '/encuesta_regitrada';

  @override
  State<EncuestaResgistrada> createState() => _EncuestaResgistradaState();
}

class _EncuestaResgistradaState extends State<EncuestaResgistrada> {
  @override
  Widget build(BuildContext context) {
    //poner el nombre en el medio

    return Scaffold(
      appBar: AppBar(
        title: const Text('Encuesta Registrada'),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            color: Colors.blue,
            //texto
            child: const Center(
              child: Text(
                "Encuesta Registrada",
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
                "Encuesta Registrada",
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
