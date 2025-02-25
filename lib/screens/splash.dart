import 'dart:async';

import 'package:fichavulnerabilidad/screens/home.dart';
import 'package:fichavulnerabilidad/utils/ui/drawables.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "/splash";

  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // ⏳ Espera 3 segundos y navega a la HomeScreen
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // Ajusta el tamaño del Column al contenido
          children: <Widget>[
            Image.asset(
              TrackingDrawables.getLogoColor(),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  top: 16.0), // Espacio entre la imagen y el indicador
              child: CircularProgressIndicator.adaptive(),
            ),
          ],
        ),
      ),
    );
  }
}
