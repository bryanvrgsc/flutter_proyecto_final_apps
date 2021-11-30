import 'dart:ui';

import 'package:flutter/material.dart';

import 'rutas.dart';
import 'interface/login.dart';
import 'interface/signup.dart';
import 'interface/contacto.dart';
import 'interface/feedback.dart';

class navegacioninicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'navegación drawer',
      home: login(),
      routes: {
        rutas.rutalogin: (context) => login(),
        rutas.rutasignup: (context) => signup(),
        rutas.rutacontacto: (context) => contacto(),
        rutas.rutafeedback: (context) => feedback(),
      },
    );
  }
}
