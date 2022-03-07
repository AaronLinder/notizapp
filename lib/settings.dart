import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notizapp/sidbare_settings.dart';
import 'main.dart';

bool isSelected = false;

class options extends StatefulWidget {
  const options({Key? key}) : super(key: key);

  @override
  State<options> createState() => _optionsState();
}

class _optionsState extends State<options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Center(child: Text("Settings")),
      ),
      body: Column(
        children: [
          Align(
            child: Text(
              "Color Scheme",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Row(
            children: [
              Container(
                child: Text("Light Theme"),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: CupertinoSwitch(
                    value: isSelected,
                    onChanged: (value) {
                      setState(
                        () {
                          isSelected = value;
                          colors();
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  colors() {
    color();
  }
}
