import 'package:flutter/material.dart';
import 'login.dart';
import 'create_user.dart';
import 'login_failed.dart';
import 'create_user_fail.dart';
import 'notiz.dart';
import 'notizenuebersicht.dart';
import 'settings.dart';
import 'colorScheme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: Scaffold(
        body: login(),
      ),
      routes: {
        "login": (context) => login(),
        "create": (context) => create(),
        "loginf": (context) => login_failed(),
        "createf": (context) => create_user_fail(),
        "uebersicht": (context) => uebersicht(),
        "options": (context) => options(),
      },
    );
  }
}

color() {
  if(isSelected){
    CustomTheme.darkTheme;
  }
  else{
    CustomTheme.lightTheme;
  }
}
