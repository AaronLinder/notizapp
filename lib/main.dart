import 'package:flutter/material.dart';
import 'login.dart';
import 'create_user.dart';
import 'login_failed.dart';
import 'create_user_fail.dart';
import 'notiz.dart';
import 'notizenuebersicht.dart';
import 'settings.dart';
import 'colorScheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: CustomTheme.darkTheme,
      home: const Scaffold(
        body: notiz(),
      ),
      routes: {
        "login": (context) => login(),
        "create": (context) => create(),
        "loginf": (context) => login_failed(),
        "createf": (context) => create_user_fail(),
        "notiz": (context) => notiz(),
        "uebersicht": (context) => uebersicht(),
        "options": (context) => options(),
      },
    );
  }
}
