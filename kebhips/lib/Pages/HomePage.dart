import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('HomePage'),
      ),

      body: new Column(
        children: <Widget>[
          new Text('Voici le Home Page')
        ],
      ),
    );
  }
}
