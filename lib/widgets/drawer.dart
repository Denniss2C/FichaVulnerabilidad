import 'package:fichavulnerabilidad/screens/home.dart';
import 'package:fichavulnerabilidad/screens/infoMIES.dart';
import 'package:fichavulnerabilidad/screens/lista_encuestas.dart';
import 'package:fichavulnerabilidad/screens/new_encuesta.dart';
import 'package:fichavulnerabilidad/utils/provider/userProvider.dart';
import 'package:fichavulnerabilidad/utils/services/login/login_dialog.dart';
import 'package:fichavulnerabilidad/utils/ui/color.dart';
import 'package:fichavulnerabilidad/utils/ui/drawables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(userProvider.userName ?? 'Sin iniciar sesión'),
            accountEmail: Text(userProvider.userEmail ?? '-----'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: TrackingColors.blanco,
              child: Image.asset(
                TrackingDrawables
                    .getUsuario(), // Reemplaza con la ruta correcta
              ),
            ),
            decoration: BoxDecoration(
              color: TrackingColors.lightGrey, // Fondo gris
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(
              TrackingDrawables.getSVGPrincipal(),
              width: 40,
              height: 40,
            ),
            title: const Text('Principal'),
            subtitle: const Text('Pantalla principal'),
            onTap: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
          ListTile(
            leading: Image.asset(
              TrackingDrawables.getLaucher(),
              width: 40,
              height: 40,
            ),
            title: const Text('Llenar Encuesta'),
            subtitle: const Text('Personas con discapacidad'),
            onTap: () {
              Navigator.pushNamed(context, NuevaEncuesta.routeName);
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              TrackingDrawables.getSVGListaRegistros(),
              width: 40,
              height: 40,
            ),
            title: const Text('Encuestas Registradas'),
            subtitle: const Text('Listado de encuestas'),
            onTap: () {
              Navigator.pushNamed(context, EncuestaRegistrada.routeName);
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              TrackingDrawables.getSVGAcercaDe(),
              width: 40,
              height: 40,
            ),
            title: const Text('Acerca de'),
            subtitle: const Text('Información aplicación'),
            onTap: () {
              Navigator.pushNamed(context, Mies.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: SvgPicture.asset(
              userProvider.userName != null
                  ? TrackingDrawables.getSVGLogout()
                  : TrackingDrawables.getSVGLogin(),
              width: 40,
              height: 40,
            ),
            title: Text(userProvider.userName != null
                ? 'Cerrar Sesión'
                : 'Iniciar Sesión'),
            subtitle: Text(userProvider.userName != null
                ? 'Cerrar sesión de la aplicación'
                : 'Iniciar sesión en la aplicación'),
            onTap: () {
              if (userProvider.userName != null) {
                // Si el usuario está logueado, cerrar sesión
                userProvider.logout();
                Navigator.pushNamed(context, HomeScreen.routeName);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Sesión cerrada'),
                  ),
                );
              } else {
                // Si el usuario no está logueado, abrir el diálogo de inicio de sesión
                Navigator.pushNamed(context, HomeScreen.routeName);
                showLoginDialog(context).then((value) {
                  if (value != null) {}
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
