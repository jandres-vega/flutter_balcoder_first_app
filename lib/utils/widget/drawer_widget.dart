import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<StatefulWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Menú'),
        ),
        ListTile(
          title: const Text('Iniciar sesion'),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.login);
          },
        ),
        ListTile(
          title: const Text('Registrarse'),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.register);
          },
        ),
      ],
    );
  }
}