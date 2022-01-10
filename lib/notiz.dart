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
                  padding: EdgeInsets.only(top: 480),
                  child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'uebersicht');
                        },
                        child: Center(
                          child: Text('zurück'),
                        )),
                    const SizedBox(width: 200),
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