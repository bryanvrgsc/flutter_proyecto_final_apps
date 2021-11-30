import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:proyecto_final_apps/interface/home_admin.dart';
import 'package:proyecto_final_apps/interface/home_user.dart';

import 'package:proyecto_final_apps/rutas.dart';
import 'package:proyecto_final_apps/interface/login.dart';
import 'package:proyecto_final_apps/interface/signup.dart';
import 'package:proyecto_final_apps/interface/contacto.dart';
import 'package:proyecto_final_apps/interface/feedback.dart';

import 'package:proyecto_final_apps/utils/auth_helper.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MainScreen(),
      routes: {
        rutas.rutalogin: (context) => MainScreen(),
        rutas.rutasignup: (context) => SignupPage(),
        rutas.rutacontacto: (context) => contacto(),
        rutas.rutafeedback: (context) => feedback(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.hasData && snapshot.data != null) {
          UserHelper.saveUser(snapshot.data!);
          return StreamBuilder<DocumentSnapshot>(
            stream: FirebaseFirestore.instance.collection("users").doc(snapshot.data!.uid).snapshots() ,
            builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot){
              if(snapshot.hasData && snapshot.data != null) {
                Map<String, dynamic> user = snapshot.data!.data() as Map<String, dynamic>;
                if(user['role'] == 'admin') {
                  return AdminHomePage();
                }else{
                  return HomePage();
                }
              }else{
                return Material(
                  child: Center(child: CircularProgressIndicator(),),
                );
              }
            },
          );
        }
        return LoginPage();
      }
    );
  }
}
