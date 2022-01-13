import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class options extends StatefulWidget {
  const options({Key? key}) : super(key: key);

  @override
  State<options> createState() => _optionsState();
}

class _optionsState extends State<options> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Color Scheme"),
          Row(children: [
            Container(
                alignment: Alignment.center,
                child: ChoiceChip(
                  label: Text("Bright"),
                  selected: isSelected,
                  onSelected: (bool value) {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  pressElevation: 20,
                  backgroundColor: Colors.black54,
                  selectedColor: Colors.greenAccent,
                )),
            Container(
                alignment: Alignment.center,
                child: ChoiceChip(
                  label: Text("Dark"),
                  selected: !isSelected,
                  onSelected: (bool value) {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  pressElevation: 20,
                  backgroundColor: Colors.black54,
                  selectedColor: Colors.greenAccent,
                ))
          ])
        ],
      ),
    );
  }
}
