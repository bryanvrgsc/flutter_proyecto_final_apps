import 'dart:io';
import 'package:flutter/material.dart';
import 'rutas.dart';
import 'createDrawerBodyItem.dart';

class navigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        SizedBox(height: 60),
        createDrawerBodyItem(
            icon: Icons.login_rounded,
            text: 'Login',
            myonTap: () =>
              Navigator.pushReplacementNamed(context, rutas.rutalogin)),
        createDrawerBodyItem(
            icon: Icons.person_add_rounded,
            text: 'Crear Usuario',
            myonTap: () =>
              Navigator.pushReplacementNamed(context, rutas.rutasignup)),
        createDrawerBodyItem(
            icon: Icons.contact_page_rounded,
            text: 'Contactanos',
            myonTap: () =>
              Navigator.pushReplacementNamed(context, rutas.rutacontacto)),
        createDrawerBodyItem(
            icon: Icons.feedback_rounded,
            text: 'Feedback',
            myonTap: () =>
              Navigator.pushReplacementNamed(context, rutas.rutafeedback)),
        SizedBox(height: 300),
        createDrawerBodyItem(
            icon: Icons.exit_to_app_rounded,
            text: 'Salir',
            myonTap: () =>
              exit(0)
        )
      ],
    ));
  }
}