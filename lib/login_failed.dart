import 'package:flutter/material.dart';
import 'authentification.dart';

class login_failed extends StatelessWidget {
  login_failed({Key? key}) : super(key: key);

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(50.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('User Login'),
                TextField(
                    onChanged: (input) {
                      email = input;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'E-mail',
                    )),
                TextField(
                    onChanged: (input) {
                      password = input;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Passwort',
                    )),
                ElevatedButton(
                  onPressed: () {
                    AuthenticationHelper().signIn(email: email, password: password);
                  },
                  child: Center(
                    child: Text("login"),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'create');
                    },
                    child: Center(
                      child: Text('Neuer Benutzer erstellen'),
                    )),
                Text('Username oder Passwort ist falsch'),
              ])),
    );
  }
}