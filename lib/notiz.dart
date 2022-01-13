import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notizapp/sidebar.dart';

class notiz extends StatelessWidget {
  const notiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Center(child: Text("Notizen")),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              Flexible(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'uebersicht');
                          },
                          child: const Center(
                            child: Text('zurück'),
                          )),
                      const SizedBox(width: 200),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'notizenuebersicht');
                        },
                        child: const Center(
                          child: Text('speichern'),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
