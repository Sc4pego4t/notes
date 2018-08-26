import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main_page.dart';

final String prefsKey = 'notes';

class _AddNoteState extends State<AddNote> {
  TextEditingController _textEditingController;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Add note'),
      ),
      body: new Container(
        margin: EdgeInsets.all(60.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new TextField(
              decoration: InputDecoration(hintText: 'New note'),
              controller: _textEditingController,
            ),
            new Container(
              margin: EdgeInsets.all(40.0),
              child: new RaisedButton(
                onPressed: () {
                  print(_textEditingController.text);
                  addNote(_textEditingController.text);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => new MainPage()));
                },
                child: new Text(
                  'Add',
                  style: new TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<bool> addNote(String newNote) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> previousNotes;
  previousNotes = prefs.get(prefsKey);
  previousNotes.add(newNote);
  prefs.setStringList(prefsKey, previousNotes);
  return prefs.commit();
}

Future<List<String>> getNotes() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getStringList(prefsKey);
}

class AddNote extends StatefulWidget {
  @override
  _AddNoteState createState() => _AddNoteState();
}
