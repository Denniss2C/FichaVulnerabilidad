import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/ui/ui.dart';
import '../widgets/drawer.dart';

class Mies extends StatefulWidget {
  const Mies({super.key});
  static const String routeName = '/mies';

  @override
  State<Mies> createState() => _MiesState();
}

class _MiesState extends State<Mies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Acerca de',
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
        drawer: const CustomDrawer(),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Theme.of(context).brightness == Brightness.light
                      ? AssetImage(TrackingDrawables.getFondoMies())
                      : AssetImage(TrackingDrawables.getFondoMiesDark()),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'VULNEDIS',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueGrey,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        TrackingDrawables.getSVGLauncher(),
                        width: 290,
                        height: 290,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Versión 1.4.0',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Copyright 2025 MIES - ECUADOR',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Esta aplicación fue desarrollada para agilizar la recolección de información '
                      'de las personas con discapacidad con la finalidad de identificar si son vulnerables.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
