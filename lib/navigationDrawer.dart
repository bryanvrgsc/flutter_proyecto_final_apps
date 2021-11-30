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
            icon: Icons.login,
            text: 'Login',
            myonTap: () =>
              Navigator.pushReplacementNamed(context, rutas.rutalogin)),
        createDrawerBodyItem(
            icon: Icons.person_add,
            text: 'Crear Usuario',
            myonTap: () =>
              Navigator.pushReplacementNamed(context, rutas.rutasignup)),
        createDrawerBodyItem(
            icon: Icons.contact_page,
            text: 'Contactanos',
            myonTap: () =>
              Navigator.pushReplacementNamed(context, rutas.rutacontacto)),
        createDrawerBodyItem(
            icon: Icons.feedback,
            text: 'Feedback',
            myonTap: () =>
              Navigator.pushReplacementNamed(context, rutas.rutafeedback))
      ],
    ));
  }
}