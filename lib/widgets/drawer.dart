import 'package:fichavulnerabilidad/screens/infoMIES.dart';
import 'package:fichavulnerabilidad/screens/lista_encuestas.dart';
import 'package:fichavulnerabilidad/screens/new_encuesta.dart';
import 'package:fichavulnerabilidad/utils/ui/drawables.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            accountEmail: Text('  dsfdsf@sad.com '),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: 40,
              ),
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(
              TrackingDrawables.getSVGPrincipal(), // Ruta al archivo SVG
              width: 40, // Ajusta el tamaño según sea necesario
              height: 40,
            ),
            title: const Text('Principal'),
            subtitle: const Text('Pantalla principal'),
            onTap: () {
              // Implementar la lógica para navegar a la pantalla de inicio
              Navigator.pushNamed(context, NuevaEncuesta.routeName);
            },
          ),
          ListTile(
            leading: Image.asset(
              TrackingDrawables.getLaucher(),
              width: 40, // Ajusta el tamaño según sea necesario
              height: 40,
            ),
            title: const Text('Llenar Encuesta'),
            subtitle: const Text('Personas con discapacidad'),
            onTap: () {
              // Implementar la lógica para navegar a la pantalla de inicio
              Navigator.pushNamed(context, NuevaEncuesta.routeName);
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              TrackingDrawables.getSVGListaRegistros(), // Ruta al archivo SVG
              width: 40, // Ajusta el tamaño según sea necesario
              height: 40,
            ),
            title: const Text('Encuestas Registradas'),
            subtitle: const Text('Listado de encuestas'),
            onTap: () {
              // Implementar la lógica para navegar a la pantalla de inicio
              Navigator.pushNamed(context, EncuestaRegistrada.routeName);
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              TrackingDrawables.getSVGAcercaDe(), // Ruta al archivo SVG
              width: 40, // Ajusta el tamaño según sea necesario
              height: 40,
            ),
            title: const Text('Acerca de'),
            subtitle: const Text('Información aplicación'),
            onTap: () {
              // Implementar la lógica para navegar a la pantalla de inicio
              Navigator.pushNamed(context, Mies.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: SvgPicture.asset(
              TrackingDrawables.getSVGLogin(), // Ruta al archivo SVG
              width: 40, // Ajusta el tamaño según sea necesario
              height: 40,
            ),
            title: const Text('Iniciar Sesión'),
            subtitle: const Text('Iniciar sesión en la aplicación'),
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
