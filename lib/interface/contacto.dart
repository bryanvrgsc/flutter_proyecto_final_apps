import 'package:proyecto_final_apps/routes/navigationDrawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
import 'dart:io';

class ContactPage extends StatefulWidget {
  static const String nombreruta = '/contacto';
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  hacerllamada() async {
    const url = 'tel:+525512345678';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'error al llamar la $url';
    }
  }

  enviarsms(String msj, List<String> d) async {
    String r = await sendSMS(message: msj, recipients: d).catchError((onError) {
      print(onError);
    });
    print(r);
  }

  openwhatsapp(String message, String destinatario) async {
    var whatsapp = destinatario;
    var whatsappURl_android =
        "whatsapp://send?phone=" + whatsapp + "&text=" + message;
    var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse(message)}";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURL_ios)) {
        await launch(whatappURL_ios, forceSafariVC: false);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no instalado")));
      }
    } else {
      // android , web
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no instalado")));
      }
    }
  }

  launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+001-(555)1234567',
      text: "Hey! I'm inquiring about the apartment listing",
    );
    await launch('$link');
  }

  @override
  Widget build(BuildContext context) {
    double fontsizebuttons = 35;
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacto'),
      ),
      drawer: navigationDrawer(),
        body: Center(
            child: IntrinsicWidth(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
              const SizedBox(height: 80),
              ElevatedButton(
                child: Text("Teléfono ☎️"),
                onPressed: hacerllamada,
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(78, 42, 126, 1),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                child: Text("SMS 💬"),
                onPressed: () {
                  String msj = "Demo";
                  List<String> d = ["+525512345678"];
                  enviarsms(msj, d);
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(78, 42, 126, 1),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                child: Text("WhatsApp 📦 1"),
                onPressed: () {
                  String msj = "Demo";
                  String d = "+525512345678";
                  openwhatsapp(msj, d);
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(78, 42, 126, 1),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                child: Text("WhatsApp 📦 2"),
                onPressed: launchWhatsApp,
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(78, 42, 126, 1),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              )
            ]))));
  }
}
