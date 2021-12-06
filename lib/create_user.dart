import 'package:flutter/material.dart';
import 'login.dart';

class create extends StatelessWidget {
  const create({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('Neuer Benutzer'),
                  const TextField(
                      onSubmitted: null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
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
                        Navigator.pop(context);
                      },
                      child: const Center(
                        child: Text('abbrechen'),
                      ))
                ])));
  }
}
