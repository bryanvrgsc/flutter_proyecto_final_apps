import 'package:flutter/material.dart';
import 'package:proyecto_final_apps/routes/navigationDrawer.dart';

class FeedbackPage extends StatelessWidget {
  static const String nombreruta = '/feedback';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      drawer: navigationDrawer(),
      body: Center(
        child: Text("Feedback"),
      ));
  }
}

