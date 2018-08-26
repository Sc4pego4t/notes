import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new DrawerHeader(
            child: new Text(
              'Notes',
              style: TextStyle(color: Colors.white),
              textScaleFactor: 1.5,
            ),
            decoration: BoxDecoration(color: Colors.blueGrey),
          ),
          new ListTile(
            title: new Text(
              'Add note',
              textScaleFactor: 1.3,
            ),
            trailing: new Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
