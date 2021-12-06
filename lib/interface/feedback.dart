import 'package:proyecto_final_apps/routes/navigationDrawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  static const String nombreruta = '/feedback';
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  late TextEditingController _nombreController;
  late TextEditingController _emailController;
  late TextEditingController _telefonoController;
  late TextEditingController _mensajeController;

  @override
  void initState() {
    super.initState();
    _nombreController = TextEditingController(text: "");
    _emailController = TextEditingController(text: "");
    _telefonoController = TextEditingController(text: "");
    _mensajeController = TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      drawer: navigationDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 50.0),
              Text(
                "Retroalimentación",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              const SizedBox(height: 20.0),
              TextField(
                controller: _nombreController,
                decoration: InputDecoration(
                    hintText: "Ingrese su nombre",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              const SizedBox(height: 15.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    hintText: "Ingrese su email",
                    prefixIcon: Icon(Icons.mail),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              const SizedBox(height: 15.0),
              TextField(
                controller: _telefonoController,
                decoration: InputDecoration(
                    hintText: "Ingrese su teléfono",
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              const SizedBox(height: 15.0),
              TextField(
                style: TextStyle(
                  //height: 4.0                 
                ),
                controller: _mensajeController,
                decoration: InputDecoration(
                    hintText: "Ingrese su mensaje",
                    prefixIcon: Icon(Icons.message),
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              const SizedBox(height: 15.0),
              
              const SizedBox(height: 15.0),
              RaisedButton(
                child: Text("Enviar mensaje"),
                onPressed: () async {
                  if (_nombreController.text.isEmpty ||
                      _emailController.text.isEmpty ||
                      _telefonoController.text.isEmpty ||
                      _mensajeController.text.isEmpty) {
                    print("No pueden estar todos los campos vacíos");
                    return;
                  } else {
                    FirebaseFirestore.instance
                    .collection('feedback')
                    .add({'nombre': _nombreController.text,
                          'email': _emailController.text,
                          'telefono': _telefonoController.text,
                          'mensaje':_mensajeController.text});
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
