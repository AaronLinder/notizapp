import 'package:firebase_auth/firebase_auth.dart';
import 'package:notizapp/login.dart';
import 'package:notizapp/notizenuebersicht.dart';

class AuthenticationHelper {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  get user => _auth.currentUser;

  //SIGN UP METHOD
  Future signUp({required String email, required String password}) async {
    bool worked = false;
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      worked = true;
    } on FirebaseAuthException catch (e) {
      return e.message;

    }
    return worked;
  }

  //SIGN IN METHOD
  Future signIn({required String email, required String password}) async {
    bool worked = false;
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      worked = true;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
    print("funktioniert");
    return worked;
  }

  //SIGN OUT METHOD
  Future signOut() async {
    await _auth.signOut();

    print('signout');
  }
}