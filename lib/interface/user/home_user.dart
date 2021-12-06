import 'package:flutter/material.dart';
import 'package:proyecto_final_apps/routes/navigationDrawerUser.dart';

class HomePage extends StatelessWidget {
  static const String nombreruta = '/home';

  @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Home'),
         backgroundColor: Colors.black
       ),
       drawer: navigationDrawerUser(),
       body: Center(
         child: Text("Soy Home"),
       ));
       }
 }