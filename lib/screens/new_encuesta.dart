import 'package:fichavulnerabilidad/screens/secciones_pregutas/adulto_mayor.dart';
import 'package:fichavulnerabilidad/screens/secciones_pregutas/datos_generales.dart';
import 'package:fichavulnerabilidad/screens/secciones_pregutas/desarrollo_infantil.dart';
import 'package:fichavulnerabilidad/utils/ui/ui.dart';
import 'package:fichavulnerabilidad/widgets/drawer.dart';
import 'package:fichavulnerabilidad/widgets/loadingDialog.dart'; // Importar el diálogo de carga
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/preguntas.dart';
import '../utils/provider/encuestaProvider.dart';
import '../widgets/encuesta_nav.dart';

class NuevaEncuesta extends StatefulWidget {
  const NuevaEncuesta({super.key});
  static const String routeName = '/nueva_encuesta';

  @override
  State<NuevaEncuesta> createState() => _NuevaEncuestaState();
}

class _NuevaEncuestaState extends State<NuevaEncuesta> {
  final PageController _pageController = PageController();
  int _paginaActual = 0;

  void _cambiarPagina(int index) {
    setState(() {
      _paginaActual = index;
    });
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  void _guardarEncuesta() async {
    final encuestaProvider =
        Provider.of<EncuestaProvider>(context, listen: false);
    print("Encuesta Guardada: ${encuestaProvider.respuestas}");

    // Mostrar diálogo de carga
    _showLoadingDialog(context);

    // Esperar 2 segundos
    await Future.delayed(const Duration(seconds: 2));

    // Cerrar el diálogo de carga
    Navigator.of(context).pop();

    // Navegar a la pantalla principal
    Navigator.pushNamed(context, '/home');

    // Mostrar SnackBar de confirmación
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Encuesta guardada exitosamente'),
      ),
    );

    // Limpiar todos los campos de la encuesta
    encuestaProvider.resetEncuesta();

    // Aquí puedes enviar los datos a la base de datos o almacenamiento
  }

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return const LoadingDialog(message: "Guardando...");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final totalPaginas =
        preguntasPorSeccion.length; // Detectar total de secciones dinámicamente

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nueva Encuesta',
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
      //Para poner al final los botones de control
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                DatosGenerales(),
                AdultoMayor(),
                DesarrolloInfantil(),
              ],
            ),
          ),
          EncuestaNav(
            paginaActual: _paginaActual,
            totalPaginas: totalPaginas,
            onAnterior: _paginaActual > 0
                ? () => _cambiarPagina(_paginaActual - 1)
                : null,
            onSiguiente: _paginaActual < totalPaginas - 1
                ? () => _cambiarPagina(_paginaActual + 1)
                : null,
            onGuardar:
                _paginaActual == totalPaginas - 1 ? _guardarEncuesta : null,
          ),
        ],
      ),
    );
  }
}
