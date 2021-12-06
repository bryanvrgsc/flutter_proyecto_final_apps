import 'dart:io';
import 'rutas.dart';
import 'package:flutter/material.dart';
import 'createDrawerBodyItem.dart';
import 'package:proyecto_final_apps/utils/auth_helper.dart';

class navigationDrawerUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        SizedBox(height: 60),
        createDrawerBodyItem(
            icon: Icons.home,
            text: 'Home',
            myonTap: () =>
                Navigator.pushReplacementNamed(context, rutas.rutahomeuser)),
        createDrawerBodyItem(
            icon: Icons.date_range_rounded,
            text: 'Crear cita',
            myonTap: () =>
                Navigator.pushReplacementNamed(context, rutas.rutacitauser)),
        createDrawerBodyItem(
            icon: Icons.qr_code,
            text: 'Mostrar QR',
            myonTap: () =>
                Navigator.pushReplacementNamed(context, rutas.rutaqruser)),
        createDrawerBodyItem(
            icon: Icons.contact_page_rounded,
            text: 'Contactanos',
            myonTap: () =>
                Navigator.pushReplacementNamed(context, rutas.rutacontactouser)),
        createDrawerBodyItem(
            icon: Icons.feedback_rounded,
            text: 'Feedback',
            myonTap: () =>
                Navigator.pushReplacementNamed(context, rutas.rutafeedbackuser)),
        createDrawerBodyItem(
            icon: Icons.logout_rounded,
            text: 'Cerrar Sesión',
            myonTap: () =>
              AuthHelper.logOut()
        ),
        SizedBox(height: 300),
        createDrawerBodyItem(
            icon: Icons.exit_to_app, text: 'Salir', myonTap: () => exit(0))
      ],
    ));
  }
}
