import 'package:flutter/material.dart';
//import 'package:navega_drawer/navigationDrawer.dart';
import '../navigationDrawer.dart';

class signup extends StatelessWidget {
  static const String nombreruta = '/signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Crear Usuario'),
        ),
        drawer: navigationDrawer(),
        body: Center(
          child: Text("Soy Crear Usuario"),
        ));
  }
}
