import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  final _formkey = GlobalKey<FormState>();
  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: (){}),
                  SizedBox(height: 60),
                  Text(
                    "Bienvenido",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Inicia sesión para continuar",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                      controller: _emailController,
                      validator: (val) => val!.isNotEmpty
                          ? null
                          : "Por favor ingrese un usuario",
                      decoration: InputDecoration(
                          hintText: "email",
                          prefixIcon: Icon(Icons.mail),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))),
                  SizedBox(height: 30),
                  TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      validator: (val) => val!.length < 6
                          ? "Por favor ingrese más de 6 caracteres"
                          : null,
                      decoration: InputDecoration(
                          hintText: "password",
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))),
                  SizedBox(height: 30),
                  MaterialButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        print("Usuario:${_emailController.text}");
                        print("Usuario:${_passwordController.text}");
                      }
                    },
                    height: 70,
                    minWidth: double.infinity,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text("No tienes cuenta?"),
                      SizedBox(width: 5),
                      TextButton(
                        onPressed: () {}, 
                        child: Text("Registrate"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
