import 'package:flutter/material.dart';
import 'package:notizapp/sidebar.dart';

class uebersicht extends StatelessWidget {
  const uebersicht({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Center(child: Text("Notiz auswahl")),
      ),
      body: Container(
        decoration: new BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: DropdownButton(items: null),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: SizedBox(
                          height: 25.0,
                          child: DropdownButton(items: null),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                          onPressed: null, child: Icon(Icons.add)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
