import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';


class AdministrationStaff extends StatefulWidget {
  @override
  _AdministrationStaffState createState() => _AdministrationStaffState();
}

class _AdministrationStaffState extends State<AdministrationStaff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF736AB7),
        appBar: AppBar(
          centerTitle: true,
          title: new Text('', textAlign: TextAlign.center),
          backgroundColor: Colors.blue[900],
        ),
        drawer: AppDrawer(),
        body: ListView(
          children: <Widget>[
            Center(
              child: new Column(
                children: <Widget>[
                  SizedBox(height: 10.0,),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(3.0), color: Colors.blue),
                    width: 232.0,
                    //color: Colors.blue,
                    child: Card(
                      elevation: 5.0,
                      //color: Colors.blue,
                      child: SizedBox(
                        width: 180.0,
                        height: 200.0,
                        child: Image.asset('assets/LeDirecteur2.jpg'),
                      ),
                    ),
                  ),
                  new SizedBox(height: 5.0,),
                  new Text('Text text text'),
                  new SizedBox(height: 25.0,),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(3.0), color: Colors.blue),
                    width: 232.0,
                    //color: Colors.blue,
                    child: Card(
                      elevation: 5.0,
                      child: SizedBox(
                        width: 200.0,
                        height: 200.0,
                        child: Image.asset('assets/sergeo.jpg'),
                      ),
                    ),
                  ),
                  new SizedBox(height: 5.0,),
                  new Text('Text1 text1 text1'),
                  new SizedBox(height: 25.0,),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(3.0), color: Colors.blue),
                    width: 232.0,
                    //color: Colors.blue,
                    child: Card(
                      elevation: 5.0,
                      child: SizedBox(
                        width: 200.0,
                        height: 200.0,
                        child: Image.asset('assets/georges.jpg'),
                      ),
                    ),
                  ),
                  new SizedBox(height: 5.0,),
                  new Text('Text2 text2 text2'),
                  new SizedBox(height: 25.0,),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(3.0), color: Colors.blue),
                    width: 232.0,
                    //color: Colors.blue,
                    child: Card(
                      elevation: 5.0,
                      //color: Colors.blue,
                      child: SizedBox(
                        width: 200.0,
                        height: 200.0,
                        child: Image.asset('assets/compp.jpg'),
                      ),
                    ),
                  ),
                  new SizedBox(height: 5.0,),
                  new Text('Text3 text3 text3'),
                  new SizedBox(height: 15.0,),
                ],
              ),

            ),

            SizedBox(height: 20.0,),
            Container(
              width: MediaQuery.of(context).size.width*0.5,
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
        )
    );
  }
}




