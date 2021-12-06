import 'package:flutter/material.dart';

class signin extends StatelessWidget {
  const signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
        children: [
        Text('User Login'),
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
    ));
  }
}


