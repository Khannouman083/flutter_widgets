import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
void signup(String email,password) async{
  try {
    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
      print("Account created successfully");
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print("Account created successfully");
    }
  }
  catch (e) {
    print(e);
  }
}

void signIn (String email, String password) async{
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password
    );
    print("Sign in successfully");
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      Fluttertoast.showToast(
        msg: "No user found for this email"
      );
    } else if (e.code == 'wrong-password') {
      Fluttertoast.showToast(
          msg: 'Wrong password provided for that user.'
      );
    }
  }
}