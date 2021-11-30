import 'package:flutter/material.dart';
//import 'package:navega_drawer/navigationDrawer.dart';
import '../navigationDrawer.dart';

class contacto extends StatelessWidget {
  static const String nombreruta = '/contacto';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contacto'),
        ),
        drawer: navigationDrawer(),
        body: Center(
          child: Text("Soy contacto"),
        ));
  }
}
