import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget{

  final String text;

  NoteCard(this.text);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        child: new Text(text, textScaleFactor: 1.3,),
        margin: new EdgeInsets.only(
            left: 10.0, top: 5.0, right: 10.0, bottom: 5.0),
      ),
    );
  }

}