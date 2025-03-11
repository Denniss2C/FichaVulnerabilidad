import 'package:fichavulnerabilidad/app.dart';
import 'package:fichavulnerabilidad/utils/provider/encuestaProvider.dart';
import 'package:fichavulnerabilidad/utils/provider/passProvider.dart';
import 'package:fichavulnerabilidad/utils/provider/userProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => PasswordVisibilityProvider()),
        ChangeNotifierProvider(create: (_) => EncuestaProvider())
      ],
      child: const MyApp(),
    ),
  );
}
