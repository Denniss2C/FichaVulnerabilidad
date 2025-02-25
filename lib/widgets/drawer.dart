import 'package:fichavulnerabilidad/screens/infoMIES.dart';
import 'package:fichavulnerabilidad/screens/lista_encuestas.dart';
import 'package:fichavulnerabilidad/screens/new_encuesta.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Bienvenido'),
            accountEmail: Text('   '),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: 40,
              ),
            ),
          ),
          const ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('UNITS'),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.add_comment),
            title: const Text('Unit 1'),
            onTap: () {
              // Implementar la lógica para navegar a la pantalla de inicio
              Navigator.pushNamed(context, NuevaEncuesta.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_comment),
            title: const Text('Unit 2'),
            onTap: () {
              // Implementar la lógica para navegar a la pantalla de inicio
              Navigator.pushNamed(context, EncuestaRegistrada.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_comment),
            title: const Text('Unit 3'),
            onTap: () {
              // Implementar la lógica para navegar a la pantalla de inicio
              Navigator.pushNamed(context, Mies.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Salir'),
            onTap: () {
              // Implementar la lógica para cerrar sesión o salir de la aplicación
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
