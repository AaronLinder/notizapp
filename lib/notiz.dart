import 'package:flutter/material.dart';

class notiz extends StatelessWidget {
  const notiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(50.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                TextField(
                    onSubmitted: null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Title',
                    )),
                TextField(
                    onSubmitted: null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Notiztext',
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'uebersicht');
                    },
                    child: Center(
                      child: Text('zurück'),
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'notizenuebersicht');
                    },
                    child: Center(
                      child: Text('speichern'),
                    ))
              ])),
    );
  }
}