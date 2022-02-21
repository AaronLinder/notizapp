import 'package:flutter/material.dart';
import 'login.dart';

class create_user_fail extends StatelessWidget {
  const create_user_fail({Key? key}) : super(key: key);

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
                  const TextField(
                      onSubmitted: null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-mail',
                      )),
                  const TextField(
                      onSubmitted: null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Passwort',
                      )),
                  const TextField(
                      onSubmitted: null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Passwort bestätigen',
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "login");
                      },
                      child: const Center(
                        child: Text('abbrechen'),
                      )),
                  Text('Dieser User existiert bereits'),
                ])));
  }
}