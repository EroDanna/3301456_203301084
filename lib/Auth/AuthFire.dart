import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthFire {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    return await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<UserCredential> signup(String email, String password) async {
    return await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }
}

Future<void> userSetup(
    String uid, String email, String passowrd, String userName) async {
  await FirebaseFirestore.instance
      .collection('Accounts')
      .doc('${uid}')
      .collection('User')
      .doc('Inf')
      .set({
    'email': email,
    'password': passowrd,
    'userName': userName,
    'imageUrl': '',
  });

  return;
}
