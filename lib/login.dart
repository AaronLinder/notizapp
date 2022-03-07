import 'package:flutter/material.dart';
import 'authentification.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
      body: SingleChildScrollView(
        child: Container(
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
                    icon: Icon(
                        isVisible ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  AuthenticationHelper()
                      .signIn(email: email, password: password)
                      .then(
                        (value) => {
                          if (value == true)
                            {Navigator.pushNamed(context, "uebersicht")}
                          else
                            {Navigator.pushNamed(context, "loginf")}
                        },
                      );
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
      ),
    );
  }
}
