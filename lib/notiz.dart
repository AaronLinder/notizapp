import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class notiz extends StatelessWidget {
  const notiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: TextField(
                    onSubmitted: null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Title',
                    )),
                ),
                TextField(
                    onEditingComplete: null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Notiztext',
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 100, right: 40, left: 40),
                  child: Row(
                  children: [
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
                    ]
                )
                ),

              ])),
    );
  }
}