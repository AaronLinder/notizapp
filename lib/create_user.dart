import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'login.dart';
import 'authentification.dart';
import 'main.dart';

class create extends StatelessWidget {
  const create({Key? key}) : super(key: key);

  String email;
  String password;
  String passwordcheck;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('E-mail'),
                  TextField(
                      onChanged: (input) {
                        email = input;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'e-mail',
                      )),
                  TextField(
                      onChanged: (input) {
                        password = input;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Passwort',
                      )),
                  TextField(
                      onChanged: (input) {
                        passwordcheck = input;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Passwort bestätigen',
                      )),
                  ElevatedButton(
                      onPressed: () {
                        passwordchecker(email, password, passwordcheck, context);
                      },
                      child: const Center(
                        child: Text('Benutzer erstellen'),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "login");
                      },
                      child: const Center(
                        child: Text('abbrechen'),
                      ))
                ])));
  }

  void passwordchecker(String email, String password, String passwordcheck, context) {
    if (password == passwordcheck) {
      AuthenticationHelper().signUp(email: email, password: password);
    } else {
        Navigator.pushNamed(context, "login");
    }
  }
}
