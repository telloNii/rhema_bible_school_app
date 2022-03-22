import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

class FirebaseAuthentication {
  FirebaseAuthentication({
    required this.email,
    required this.password,
    this.username,
  });

  late String password;
  late String email;
  String? username;

  Future signUpUSer() async {
    await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future signInUser() async {
    await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future forgotPasswordLink() async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  void uploadProfileImage() {
    _firebaseAuth.currentUser!.photoURL;
  }
}
