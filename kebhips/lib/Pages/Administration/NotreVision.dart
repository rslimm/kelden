import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';

class NotreVision extends StatefulWidget {
  @override
  _NotreVisionState createState() => _NotreVisionState();
}

class _NotreVisionState extends State<NotreVision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: new Text(''),
      ),
      drawer: AppDrawer(),
      body: new ListView(
        children: <Widget>[
          new Text('Notre vision', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(15.0),
            child: new Text('The ultimate goal of  quality professional training is the quality--culture pervading our institution--KEBHIPS. Today professional--job oriented education stands at the crossroad of keeping pace with the emerging needs and the changing trends in the national and international job markets.This can only be achieved when you confront excellence in teaching and professionalism-- a careful choice KEBHIPS has not made any compromise. Ours is a holistic approach where classes are delivered in small groups, with maximised teacher--student interaction and engagement. Throughout your studies in Kelden Institute, you will grow to be more confident, self--reliant,'
                'resourceful and develop a can--do attitude that will make all the difference in your professional life. WE SET THE PACE FOR OTHERS TO FOLLOW.',
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            //width: MediaQuery.of(context).size.width*0.5,
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
        ],
      ),
    );
  }
}
