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
      body: Scaffold(
        body: Container(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(children: [DropdownButton(items: null,
                    iconDisabledColor: Colors.green,),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: SizedBox(
                            height: 25.0,
                            child: DropdownButton(items: null,
                              iconDisabledColor: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],)
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton(
                          onPressed: null,
                          child: Text("add Note"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
