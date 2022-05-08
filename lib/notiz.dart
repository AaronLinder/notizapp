import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notizapp/sidebar.dart';
import 'package:notizapp/notizenuebersicht.dart';

class notiz extends StatefulWidget {
  notiz({Key? key}) : super(key: key);

  @override
  State<notiz> createState() => _notizState();
}

class _notizState extends State<notiz> {
  var titel = "";
  var notizbody = "";

  void SafeNoteInDatabase() async {
    var firebaseUser = FirebaseAuth.instance.currentUser;
    await FirebaseFirestore.instance
        .collection("users")
        .doc(firebaseUser!.uid)
        .update({
      "notes": FieldValue.arrayUnion([
        {"titel": titel, "notiz": notizbody}
      ])
    });
  }

  TextEditingController getTitel = TextEditingController();
  TextEditingController getNotiz = TextEditingController();

  @override
  void initState() {
    String notiz = uebersicht().notiz;
    String titel = uebersicht().titel;
    getTitel.text = notiz;
    getNotiz.text = titel;
    super.initState();
  }

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
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                    controller: getTitel,
                    onChanged: (text) {
                      titel = text;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Title',
                    )),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: getNotiz,
                  textInputAction: TextInputAction.newline,
                  keyboardType: TextInputType.multiline,
                  textAlignVertical: TextAlignVertical.top,
                  maxLines: null,
                  onChanged: (text) {
                    notizbody = text;
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 460),
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
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          SafeNoteInDatabase();
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
