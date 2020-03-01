import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


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
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.88,
            child: new ListView(
              children: <Widget>[
                new Text('Notre administration', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                new Text('Ladministration de Kelden Bilingual Institute of Professional Studies est constitué des enseigants de grandes écoles'),
              ],
            ),
          ),



Center(
        child: Container(
          width: MediaQuery.of(context).size.width*0.4,
          //MediaQuery.of(context).size.height*0.88
          child: Row(
            children: <Widget>[
              Text('KEBHIPS © ${DateTime.now().year.toString()}. Powered by ',),
               GestureDetector(
                 
                onTap: () async{
                              await launch('https://minse.io');
                            },
                 
                 child: Text(' MINSE')),
            ],
          ),
        ),)


          
        ],
      ),
    );
  }
}
