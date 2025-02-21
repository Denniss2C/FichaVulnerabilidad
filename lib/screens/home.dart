import 'package:flutter/material.dart';
import 'package:fichavulnerabilidad/screens/button1.dart';
import 'package:fichavulnerabilidad/screens/button2.dart';
import 'package:fichavulnerabilidad/screens/button3.dart';
import 'package:fichavulnerabilidad/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar con navigation drawer
        appBar: AppBar(
          title: const Text(
            'VulneDis',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black87,
          iconTheme: const IconThemeData(
            color: Colors.white, // Cambia esto al color que desees
          ),
        ),
        //navigation drawer
        drawer: const CustomDrawer(),
        //body
        body: Column(
          children: [
            Row(
              //poner una imagen y al lado un texto de "Diversidad somos todos"
              children: [
                Image.asset(
                  'assets/images/diversidad.jpeg',
                  height: 100,
                  width: 100,
                ),
                const Text('Diversidad somos todos')
              ],
            ),
            //botones redondos usando la misma imagen dos botones en un row y el otro debajo de eso, el boton redirige a button1.dart
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.add_comment),
                        onPressed: () {
                          Navigator.pushNamed(context, NuevaEncuesta.routeName);
                        },
                      ),
                    ),
                    const Text('Registro de nueva encuesta')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.add_comment),
                        onPressed: () {
                          Navigator.pushNamed(
                              context, EncuestaResgistrada.routeName);
                        },
                      ),
                    ),
                    const Text('Encuestas registradas')
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.add_comment),
                    onPressed: () {
                      Navigator.pushNamed(context, Mies.routeName);
                    },
                  ),
                ),
                const Text('MIES')
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.asset(
                'assets/images/diversidad.jpeg',
                height: 200,
                width: 200,
              ),
            ),
          ],
        ));
  }
}
