import 'package:proyecto_final_apps/interface/admin/home_admin.dart';
import 'package:proyecto_final_apps/interface/admin/cita_admin.dart';
import 'package:proyecto_final_apps/interface/admin/scan_qr.dart';

import 'package:proyecto_final_apps/interface/login.dart';
import 'package:proyecto_final_apps/interface/signup.dart';
import 'package:proyecto_final_apps/interface/contacto.dart';
import 'package:proyecto_final_apps/interface/feedback.dart';

import 'package:proyecto_final_apps/interface/user/home_user.dart';
import 'package:proyecto_final_apps/interface/user/contactouser.dart';
import 'package:proyecto_final_apps/interface/user/feedbackuser.dart';
import 'package:proyecto_final_apps/interface/user/crear_cita_user.dart';
import 'package:proyecto_final_apps/interface/user/qr_user.dart';

class rutas {
  static const String rutalogin = LoginPage.nombreruta;
  static const String rutasignup = SignupPage.nombreruta;
  static const String rutacontacto = ContactPage.nombreruta;
  static const String rutafeedback = FeedbackPage.nombreruta;

  static const String rutahomeuser = HomePage.nombreruta;
  static const String rutafeedbackuser = FeedbackUserPage.nombreruta;
  static const String rutacontactouser = ContactUserPage.nombreruta;
  static const String rutacitauser = CitaUserPage.nombreruta;
  static const String rutaqruser = QRUserPage.nombreruta;

  static const String rutahomeadmin = HomeAdminPage.nombreruta;
  static const String rutacitaadmin = CitaAdminPage.nombreruta;
  static const String rutascanadmin = ScanAdminPage.nombreruta;
}
