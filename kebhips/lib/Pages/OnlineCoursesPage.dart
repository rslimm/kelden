import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';


class OnlineCoursesPage extends StatefulWidget {
  @override
  _OnlineCoursesPageState createState() => _OnlineCoursesPageState();
}

class _OnlineCoursesPageState extends State<OnlineCoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('K E B H I P S', textAlign: TextAlign.center,),
        backgroundColor: Colors.blue[900],
      ),
      drawer: AppDrawer(),
      body: ListView(
        children: <Widget>[
          Container(
            child: new Text('Cours en ligne', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: new Text('Notre programme de cours en ligne concerne les étudiants et travailleurs désireux de poursuivre leurs études'
                            'mais ne disposant pas du temps nécéssaire pour prendre part au cours en présentielle, nous metons de ce fait'
                            'à la disposition de ces derniers des cours aux quelles ils prendront part à distance, à partir de leur bureau'
                            'leur maison etc...'
            , textAlign: TextAlign.justify,),
          ),
        ],
      ),
      bottomSheet: Text(' KEBHIPS©${DateTime.now().year.toString()}. Powered by MINSE.IO', textAlign: TextAlign.center,style: TextStyle(fontSize: 10.0),),
    );
  }
}
