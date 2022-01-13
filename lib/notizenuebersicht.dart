import 'package:flutter/material.dart';

class uebersicht extends StatelessWidget {
  const uebersicht({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        decoration: new BoxDecoration(color: Colors.white),
        child: Column(
          children: [
          Row(children: [
        Align(
        alignment: Alignment.topLeft,
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black)
          ),
          child:
          DropdownButton(items: null)
      )),
          Expanded(child:
          Align(
          alignment: Alignment.topRight,
          child: SizedBox(
              width: 100, // <-- Your width
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "login");
                },
                child: const Center(
                  child: Text('logout'),
                ))
          )))]),

        const Expanded(
    child: Align(
        alignment: Alignment.bottomRight,
        child: ElevatedButton(onPressed: null, child: Icon(Icons.add)),
    ))])));



  }
}
