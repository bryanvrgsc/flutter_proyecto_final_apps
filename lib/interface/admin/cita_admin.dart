import 'package:flutter/material.dart';
import 'package:proyecto_final_apps/routes/navigationDrawerAdmin.dart';

class CitaAdminPage extends StatelessWidget {
  static const String nombreruta = '/citaadmin';

  @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Home Cita Admin'),
         backgroundColor: Colors.black
       ),
       drawer: navigationDrawerAdmin(),
       body: Center(
         child: Text("Soy Cita Admin"),
       ));
       }
 }