import 'package:proyecto_final_apps/navigationDrawer.dart';
import 'package:proyecto_final_apps/utils/auth_helper.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  static const String nombreruta = '/signup';
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");
    _confirmPasswordController = TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      drawer: navigationDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 100.0),
              Text(
                "Registro",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              const SizedBox(height: 20.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Ingrese su email",
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
              const SizedBox(height: 15.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Ingrese su contraseña",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              ),
              const SizedBox(height: 15.0),
              TextField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Confirmación de contraseña",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                  )),
              ),
              const SizedBox(height: 15.0),
              
              RaisedButton(
                child: Text("Registrarse"),
                onPressed: () async {
                  if (_emailController.text.isEmpty ||
                      _passwordController.text.isEmpty) {
                    print("Email and password no pueden estar vacíos");
                    return;
                  }
                  if (_confirmPasswordController.text.isEmpty ||
                      _passwordController.text !=
                          _confirmPasswordController.text) {
                    print("Confirmación de password no coincide");
                    return;
                  }
                  try {
                    final user = await AuthHelper.signupWithEmail(
                        email: _emailController.text,
                        password: _passwordController.text);
                    if (user != null) {
                      print("Registro Exitoso");
                      Navigator.pop(context);
                    }
                  } catch (e) {
                    print(e);
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