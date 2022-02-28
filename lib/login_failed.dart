import 'package:flutter/material.dart';
import 'authentification.dart';

class login_failed extends StatefulWidget {
  login_failed({Key? key}) : super(key: key);

  @override
  State<login_failed> createState() => _login_failedState();
}

class _login_failedState extends State<login_failed> {
  String email = "";

  String password = "";

  bool isVisible = false;

  void visibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

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
                TextFormField(
                  obscureText: isVisible ? false : true,
                  onChanged: (input) {
                    password = input;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Passwort',
                    suffixIcon: IconButton(
                      onPressed: () => visibility(),
                      icon:
                      Icon(isVisible ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                ),
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