import 'package:proyecto_final_apps/routes/navigationDrawerUser.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FeedbackUserPage extends StatefulWidget {
  static const String nombreruta = '/feedbackuser';
  @override
  _FeedbackUserPageState createState() => _FeedbackUserPageState();
}

class _FeedbackUserPageState extends State<FeedbackUserPage> {
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
        backgroundColor: Colors.black
      ),
      drawer: navigationDrawerUser(),
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
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black),
                    ), 
                    border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),),
                    prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.person,
                          color: Colors.black,
                        ), // icon is 48px w
                    )),
              ),
              const SizedBox(height: 15.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    hintText: "Ingrese su email",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black),
                    ), 
                    border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),),
                    prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.mail,
                          color: Colors.black,
                        ), // icon is 48px w
                    )),
              ),
              const SizedBox(height: 15.0),
              TextField(
                controller: _telefonoController,
                decoration: InputDecoration(
                    hintText: "Ingrese su teléfono",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black),
                    ), 
                    border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),),
                    prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.phone,
                          color: Colors.black,
                        ), // icon is 48px w
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
                    contentPadding: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black),
                    ), 
                    border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),),
                    prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.message_rounded,
                          color: Colors.black,
                        ), // icon is 48px w
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
