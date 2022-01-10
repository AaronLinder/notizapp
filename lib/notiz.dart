import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class notiz extends StatelessWidget {
  const notiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: Alignment.topCenter,
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
                Align(
                  alignment: Alignment.bottomCenter,
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