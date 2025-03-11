import 'package:fichavulnerabilidad/utils/ui/ui.dart';
import 'package:fichavulnerabilidad/widgets/drawer.dart';
import 'package:flutter/material.dart';

class EncuestaRegistrada extends StatefulWidget {
  const EncuestaRegistrada({super.key});
  static const String routeName = '/encuesta_regitrada';

  @override
  State<EncuestaRegistrada> createState() => _EncuestaRegistradaState();
}

class _EncuestaRegistradaState extends State<EncuestaRegistrada> {
  @override
  Widget build(BuildContext context) {
    //poner el nombre en el medio

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Encuestas Registradas',
          style: TextStyle(
            color: TrackingColors.blanco,
          ),
        ),
        backgroundColor: TrackingColors.negro,
        iconTheme: IconThemeData(
          color: TrackingColors.blanco,
        ),
        centerTitle: true,
      ),
      //Manejador de pestañas
      drawer: const CustomDrawer(),
      body: Column(
        children: [
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
