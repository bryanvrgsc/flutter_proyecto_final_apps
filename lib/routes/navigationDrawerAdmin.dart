import 'dart:io';
import 'rutas.dart';
import 'package:flutter/material.dart';
import 'createDrawerBodyItem.dart';
import 'package:proyecto_final_apps/utils/auth_helper.dart';

class navigationDrawerAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        SizedBox(height: 60),
        createDrawerBodyItem(
            icon: Icons.home,
            text: 'Home Admin',
            myonTap: () =>
                Navigator.pushReplacementNamed(context, rutas.rutahomeadmin)),
        // createDrawerBodyItem(
        //     icon: Icons.date_range_rounded,
        //     text: 'Ver citas',
        //     myonTap: () =>
        //         Navigator.pushReplacementNamed(context, rutas.rutacitaadmin)),
        // createDrawerBodyItem(
        //     icon: Icons.qr_code,
        //     text: 'Escanear QR',
        //     myonTap: () =>
        //         Navigator.pushReplacementNamed(context, rutas.rutascanadmin)),
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
