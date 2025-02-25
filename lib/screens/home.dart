import 'package:fichavulnerabilidad/screens/infoMIES.dart';
import 'package:fichavulnerabilidad/screens/lista_encuestas.dart';
import 'package:fichavulnerabilidad/screens/new_encuesta.dart';
import 'package:fichavulnerabilidad/utils/ui/ui.dart';
import 'package:fichavulnerabilidad/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'VULNEDIS',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: TrackingColors.negro,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true, // Centra el título
      ),
      //Manejador de pestañas
      drawer: const CustomDrawer(),
      //Cuerpo del home
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(TrackingDrawables.getFondoMies()),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Image.asset(
                  TrackingDrawables.getBanner(),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        // Navega a la otra pantalla aquí
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const NuevaEncuesta()), // Reemplaza TuOtraPantalla() con tu widget de destino
                        );
                      },
                      child: Image.asset(
                        TrackingDrawables.getNuevaEncuesta(),
                        width: 175,
                        height: 175,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EncuestaRegistrada()),
                        );
                      },
                      child: Image.asset(
                        TrackingDrawables.getListaEncuestas(),
                        width: 175,
                        height: 175,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Mies()),
                        );
                      },
                      child: Image.asset(
                        TrackingDrawables.getInfo(),
                        width: 175,
                        height: 175,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  TrackingDrawables.getFlatEcuador(),
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
