import 'package:flutter/material.dart';
import 'package:proyecto_final_apps/routes/navigationDrawerUser.dart';

class QRUserPage extends StatelessWidget {
  static const String nombreruta = '/qruser';

  @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('QR Code'),
         backgroundColor: Colors.black
       ),
       drawer: navigationDrawerUser(),
       body: Center(
         child: Text("Soy QR"),
       ));
       }
 }