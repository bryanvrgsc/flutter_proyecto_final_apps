import 'package:flutter/material.dart';
//import 'package:navega_drawer/navigationDrawer.dart';
import '../navigationDrawer.dart';

class login extends StatelessWidget {
  static const String nombreruta = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        drawer: navigationDrawer(),
        body: Center(
          child: Text("Soy login"),
        ));
  }
}
