import 'package:flutter/material.dart';

class login_failed extends StatelessWidget {
  const login_failed({Key? key}) : super(key: key);

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
                    onSubmitted: null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    )),
                TextField(
                    onSubmitted: null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Passwort',
                    )),
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