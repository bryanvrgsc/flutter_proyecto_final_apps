import 'package:flutter/material.dart';
import 'navigationDrawer.dart';

class perfil extends StatelessWidget {
  static const String nombreruta = '/perfil';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('perfil'),
        ),
        drawer: navigationDrawer(),
        body: Center(
          child: Text("soy perfil"),
        ));
  }
}
