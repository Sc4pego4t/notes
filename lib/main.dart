import 'package:flutter/material.dart';
import 'pages/main_page.dart';


void main() => runApp(new NotesApp());

class NotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primaryColor: Colors.blueGrey),
      home: MainPage()
    );
  }
}
