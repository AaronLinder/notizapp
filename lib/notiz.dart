import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class notiz extends StatelessWidget {
  const notiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: TextField(
                    onSubmitted: null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Title',
                    )),
                ),
                   const SizedBox(height: 10),
                  const TextField(
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 230),
                      border: OutlineInputBorder(),
                      hintText: "Notiztext",
                    )),
                Expanded(
                  child: new Align(
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