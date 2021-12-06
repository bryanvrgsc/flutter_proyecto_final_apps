import 'package:flutter/material.dart';
import 'package:proyecto_final_apps/routes/navigationDrawerUser.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRUserPage extends StatefulWidget {
  static const String nombreruta = '/qruser';
  @override
  _QRUserPageState createState() => _QRUserPageState();
}

class _QRUserPageState extends State<QRUserPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('QR Code'),
          backgroundColor: Colors.black
        ),
        drawer: navigationDrawerUser(),
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QrImage(
                  data: controller.text,
                  size: 400,
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 40),
                buildTextField(context),
              ],
            ),
          ),
        ),
      );

  Widget buildTextField(BuildContext context) => TextField(
        controller: controller,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        decoration: InputDecoration(
          hintText: 'Ingresa el texto ',
          hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Theme.of(context).accentColor,
            ),
          ),
          suffixIcon: IconButton(
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.done, size: 30),
            onPressed: () => setState(() {}),
          ),
        ),
      );
}
