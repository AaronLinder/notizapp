import 'package:flutter/material.dart';
import 'authentification.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Color.fromRGBO(0, 113, 87, 1.0),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text('Zurück'),
            onTap: () {
              Navigator.pushNamed(context, "uebersicht");
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              AuthenticationHelper().signOut();
              Navigator.pushNamed(context, "login");
            },
          ),
        ],
      ),
    );
  }
}
