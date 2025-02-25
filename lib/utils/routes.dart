import 'package:fichavulnerabilidad/screens/button1.dart';
import 'package:fichavulnerabilidad/screens/button2.dart';
import 'package:fichavulnerabilidad/screens/button3.dart';
import 'package:fichavulnerabilidad/screens/home.dart';
import 'package:fichavulnerabilidad/screens/splash.dart';

final routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  NuevaEncuesta.routeName: (context) => const NuevaEncuesta(),
  EncuestaResgistrada.routeName: (context) => const EncuestaResgistrada(),
  Mies.routeName: (context) => const Mies(),
};
