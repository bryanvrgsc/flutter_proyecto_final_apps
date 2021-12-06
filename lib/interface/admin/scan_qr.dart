import 'package:flutter/material.dart';
import 'package:proyecto_final_apps/routes/navigationDrawerAdmin.dart';

class ScanAdminPage extends StatelessWidget {
  static const String nombreruta = '/scanadmin';

  @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Home Scan Admin'),
         backgroundColor: Colors.black
       ),
       drawer: navigationDrawerAdmin(),
       body: Center(
         child: Text("Soy Scan Admin"),
       ));
       }
 }