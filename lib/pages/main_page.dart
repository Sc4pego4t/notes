import 'package:flutter/material.dart';
import 'package:notes/pages/widgets/drawer.dart';
import 'package:notes/pages/widgets/note_card.dart';

import 'add_note_page.dart';

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Notes'),
      ),
      body: new ListView(
        children: <Widget>[new NoteCard("Asd")],
      ),
      drawer: new MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => new AddNote())),
        child: new Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => new _MainPageState();
}
