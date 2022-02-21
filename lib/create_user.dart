import 'package:flutter/material.dart';
import 'login.dart';

class create extends StatelessWidget {
  const create({Key? key}) : super(key: key);

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
                        labelText: 'e-mail',
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
                      onPressed: null,
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
}
