import 'package:flutter/material.dart';


class AdministrationPage extends StatefulWidget {
  @override
  _AdministrationPageState createState() => _AdministrationPageState();
}

class _AdministrationPageState extends State<AdministrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('K E B H I P S', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
      ),
      body: new ListView(
        children: <Widget>[
          new Text('Notre administration', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
          new Text('Ladministration de Kelden Bilingual Institute of Professional Studies est constitué des enseigants de grandes écoles'),
        ],
      ),
    );
  }
}
