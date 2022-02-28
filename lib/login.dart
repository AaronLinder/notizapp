import 'package:flutter/material.dart';
import 'authentification.dart';

class login extends StatelessWidget {
  login({Key? key}) : super(key: key);

  String email = "";
  String password = "";
  bool isVisible = false;

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
                Navigator.pushNamed(context, "uebersicht");
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
                ))
          ],
        ),
      ),
    );
  }
  void visibility() {
      isVisible = !isVisible;
  }
}
