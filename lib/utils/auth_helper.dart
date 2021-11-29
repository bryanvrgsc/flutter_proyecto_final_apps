import 'package:firebase_auth/firebase_auth.dart';

class AuthHelper {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static signInWithEmail({required String email, required String password}) async {
    final res = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    final User? user = res.user;
    return user;
  }

  static logOut() {
    return _auth.signOut();
  }
}
