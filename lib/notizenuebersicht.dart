import 'package:flutter/material.dart';

class uebersicht extends StatelessWidget {
  const uebersicht({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "login");
                      },
                      child: const Center(
                        child: Text('abbrechen'),
                      ))
                )]);
  }
}
