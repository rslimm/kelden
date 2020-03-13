import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../main.dart';
import 'Administration/AdministrationStaff.dart';
import 'Administration/LeMotDuDirecteur.dart';
import 'Administration/NotreEquipe.dart';
import 'Administration/NotreHistoire.dart';
import 'Administration/NotreVision.dart';

class AdministrationPageCard extends StatefulWidget {
  @override
  _AdministrationPageCardState createState() => _AdministrationPageCardState();
}

class _AdministrationPageCardState extends State<AdministrationPageCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF736AB7),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: new Text('Notre administration'),
      ),
      drawer: AppDrawer(),
      body: new ListView(
        children: <Widget>[
          SizedBox(height: 10.0,),
          Container(
            height: 90.0,
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdministrationStaff()));
              },
              child: new Card(
                elevation: 10.0,
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                color: Colors.greenAccent,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      title: Text('Administration', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 90.0,
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LeMotDuDirecteurPage()));
              },
              child: new Card(
                elevation: 10.0,
                color: Colors.greenAccent,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      //leading: Icon(Icons.speaker),
                      title: Text('Le mot du directeur', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 90.0,
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotreEquipePage()));
              },
              child: new Card(
                elevation: 10.0,
                color: Colors.greenAccent,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      title: Text('Notre équipe',textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 90.0,
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotreHistoire()));
              },
              child: new Card(
                elevation: 10.0,
                color: Colors.greenAccent,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      title: Text('Notre histoire', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 90.0,
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotreVision()));
              },
              child: new Card(
                elevation: 10.0,
                color: Colors.greenAccent,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      title: Text('Notre vision', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 90.0,
            child: new Card(
              elevation: 10.0,
              color: Colors.greenAccent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    title: Text('Localisation', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 25.0,),
          Container(
            //width: MediaQuery.of(context).size.width*0.5,
            child: Center(
              child: Row(
                children: <Widget>[
                  Text('KEBHIPS©${DateTime.now().year.toString()}. Powered by ', textAlign: TextAlign.center,style: TextStyle(fontSize: 10.0),),
                  GestureDetector(
                      onTap: () async{
                        await launch('https://minse.io');
                      },
                      child: Text(' MINSE.IO', textAlign: TextAlign.center,style: TextStyle(fontSize: 10.0),)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
