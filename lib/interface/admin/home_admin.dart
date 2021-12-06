import 'package:flutter/material.dart';
import 'package:proyecto_final_apps/routes/navigationDrawerAdmin.dart';

class HomeAdminPage extends StatelessWidget {
  static const String nombreruta = '/homeadmin';

  @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Home Admin'),
         backgroundColor: Colors.black
       ),
       drawer: navigationDrawerAdmin(),
       body: Center(
         child: Text("Soy Home Admin"),
       ));
       }
 }