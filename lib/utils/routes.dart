import 'package:fichavulnerabilidad/screens/home.dart';
import 'package:fichavulnerabilidad/screens/infoMIES.dart';
import 'package:fichavulnerabilidad/screens/lista_encuestas.dart';
import 'package:fichavulnerabilidad/screens/new_encuesta.dart';
import 'package:fichavulnerabilidad/screens/splash.dart';

final routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  NuevaEncuesta.routeName: (context) => const NuevaEncuesta(),
  EncuestaRegistrada.routeName: (context) => const EncuestaRegistrada(),
  Mies.routeName: (context) => const Mies(),
};
