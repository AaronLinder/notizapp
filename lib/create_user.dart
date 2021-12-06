import 'package:flutter/material.dart';

class create extends StatelessWidget {
  const create({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
        children: [
        Text('Neuer Benutzer'),
    TextField(
    onSubmitted: null,
    decoration: InputDecoration(
    labelText: 'Username',
    )
    ),
    TextField(
    onSubmitted: null,
    decoration: InputDecoration(
    labelText: 'Passwort',
    )
    ),
    TextField(
        onSubmitted: null,
        decoration: InputDecoration(
          labelText: 'Passwort bestätigen',
        )
    ),

    ElevatedButton(
    onPressed: null,
    child: Center(
    child: Text('benutzer erstellen'),
    )
    )
    ]
    )));
  }
}


