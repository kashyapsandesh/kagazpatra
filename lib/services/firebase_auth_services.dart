import 'package:firebase_auth/firebase_auth.dart';

import '../components/constants/const.dart';

class FirebaseAuthService {
  FirebaseAuth auth = FirebaseAuth.instance;
  Future login(String email, String password) async {
    await auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future signup(String email, String password) async {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future passwordReset(String email) async {
    await auth.sendPasswordResetEmail(email: email);
  }
}
