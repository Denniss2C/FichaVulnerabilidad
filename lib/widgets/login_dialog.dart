import 'package:fichavulnerabilidad/screens/home.dart';
import 'package:flutter/material.dart';

Future<Map<String, String>?> showLoginDialog(BuildContext context) async {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  return await showDialog<Map<String, String>>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Iniciar Sesión'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Usuario (Cédula)'),
            ),
            TextField(
              controller: passwordController,
              decoration:
                  const InputDecoration(labelText: 'Contraseña (Cédula)'),
              obscureText: true,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Cierra el diálogo sin datos
            },
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              String username = usernameController.text;
              String password = passwordController.text;
              if (username.isNotEmpty && password.isNotEmpty) {
                Navigator.of(context).pop({
                  'username': username,
                  'password': password,
                }); // Devuelve los datos
              } else if (username.isNotEmpty && password.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Por favor, ingrese contraseña'),
                  ),
                );
              } else {
                Navigator.pushNamed(context, HomeScreen.routeName);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Por favor, ingrese usuario y contraseña'),
                  ),
                );
              }
            },
            child: const Text('Aceptar'),
          ),
        ],
      );
    },
  );
}
