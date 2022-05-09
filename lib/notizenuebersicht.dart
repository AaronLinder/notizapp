import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notizapp/notiz.dart';
import 'package:notizapp/sidebar.dart';

class uebersicht extends StatelessWidget {
  uebersicht({Key? key}) : super(key: key);

  String titel = "";
  String notiz = "";

  void setTitelandNotiz(String _titel, String _notiz) async {
    titel = _titel;
    notiz = _notiz;
    print("set vars");
  }

  Future initBuilder() async {
    var currentUser = FirebaseAuth.instance.currentUser;
    return await FirebaseFirestore.instance
        .collection("users")
        .doc(currentUser!.uid)
        .get();
  }

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
                    child: Row(
                      children: [
                        Expanded(
                          child: FutureBuilder(
                            future: initBuilder(),
                            builder: (BuildContext context,
                                AsyncSnapshot<dynamic> snapshot) {
                              if (snapshot.hasData) {
                                Map<String, dynamic> data = snapshot.data!
                                    .data() as Map<String, dynamic>;
                                List notes = data["notes"];
                                return Column(
                                  children: [
                                    ...(notes).map((e) {
                                      return ElevatedButton(
                                        onPressed: () {
                                          setTitelandNotiz(
                                              e["titel"], e["notiz"]);
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) => Notiz(
                                                      titel: titel,
                                                      body: notiz)));
                                        },
                                        child: Text(e["titel"]),
                                      );
                                    })
                                  ],
                                );
                              }
                              return Text("hallo");
                            },
                          ),
                        ),
                      ],
                    )),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "notiz");
                          },
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
