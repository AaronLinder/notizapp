import 'package:flutter/material.dart';
class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 50.0),
      child: Column(
      children: const [
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
        ElevatedButton(
            onPressed: null,
            child: Center(
              child: Text('Neuer Benutzer'),
            )
        )
      ]
    )
    );
  }
}