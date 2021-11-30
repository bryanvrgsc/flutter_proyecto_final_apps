import 'package:flutter/material.dart';
//import 'package:navega_drawer/navigationDrawer.dart';
import '../navigationDrawer.dart';

class feedback extends StatelessWidget {
  static const String nombreruta = '/feedback';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Feedback'),
        ),
        drawer: navigationDrawer(),
        body: Center(
          child: Text("Soy feedback"),
        ));
  }
}