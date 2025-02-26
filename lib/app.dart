import 'package:fichavulnerabilidad/screens/splash.dart';
import 'package:fichavulnerabilidad/utils/routes.dart';
import 'package:fichavulnerabilidad/utils/ui/ui.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: routes,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      theme: TrackingThemes.light,
      darkTheme: TrackingThemes.dark,
      themeMode: ThemeMode.system,
      // Modificar el tema del texto
      // theme: ThemeData.light(useMaterial3: true).copyWith(
      //   textTheme: TextTheme(

      //   )
      // ),
    );
  }
}
