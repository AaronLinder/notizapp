import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notizapp/sidebar.dart';

class notiz extends StatelessWidget {
  notiz({Key? key}) : super(key: key);
  var titel = "";
  var notizbody = "";
  void SafeNoteInDatabase() async{
    var firebaseUser = FirebaseAuth.instance.currentUser;
    await FirebaseFirestore.instance.collection("users").doc(firebaseUser!.uid).update({
      "notes":FieldValue.arrayUnion([
        {
          "titel":titel,
          "notiz":notizbody
        }
      ])
    });
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
                    onChanged: (text){
                      titel = text;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Title',
                    )),
              ),
              const SizedBox(height: 10),
              TextField(
                  textInputAction: TextInputAction.newline,
                  keyboardType: TextInputType.multiline,
                  textAlignVertical: TextAlignVertical.top,
                  maxLines: null,
                  onChanged: (text){
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
