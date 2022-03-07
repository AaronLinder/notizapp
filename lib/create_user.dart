
import 'package:flutter/material.dart';
import 'login.dart';
import 'authentification.dart';
import 'main.dart';

class create extends StatefulWidget {
  create({Key? key}) : super(key: key);

  @override
  State<create> createState() => _createState();
}

class _createState extends State<create> {
  String email = "";

  String password = "";

  String passwordcheck = "";

  bool isVisible = false;

  void visibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

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
                  TextFormField(
                    obscureText: isVisible ? false : true,
                    onChanged: (input) {
                      passwordcheck = input;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Passwort bestätigen',
                      suffixIcon: IconButton(
                        onPressed: () => visibility(),
                        icon:
                        Icon(isVisible ? Icons.visibility : Icons.visibility_off),
                      ),
                    ),
                  ),
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

  void passwordchecker(String email, String password, String passwordcheck, context) async {
    if (password == passwordcheck) {
      await AuthenticationHelper().signUp(email: email, password: password).then((value) => {
        if(value == true){
          Navigator.pushNamed(context, "uebersicht")
        }
        else{
          Navigator.pushNamed(context, "createf")
        }
      });

    } else {
      Navigator.pushNamed(context, "createf");
    }
  }
}
