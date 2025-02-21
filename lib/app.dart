import 'package:flutter/material.dart';
import 'package:fichavulnerabilidad/screens/home.dart';
import 'package:fichavulnerabilidad/utils/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: routes,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      theme: ThemeData.light(useMaterial3: true),
      // Modificar el tema del texto
      // theme: ThemeData.light(useMaterial3: true).copyWith(
      //   textTheme: TextTheme(

      //   )
      // ),
    );
  }
}
