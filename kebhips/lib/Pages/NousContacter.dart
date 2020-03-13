import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';

class NousContacter extends StatefulWidget{




  @override
  _NousContacterState createState() => _NousContacterState();
}

class _NousContacterState extends State<NousContacter> {

 testConnection() async 
  {
    

    try {
      // https://www.nova-services.net/service/course/
      final result = await InternetAddress.lookup("www.google.com");
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        

   
      sentmail();
      
      
        
       print("je lance le mail");
        
      }
    } on SocketException catch (_) {
      
      
      
       
     Fluttertoast.showToast(
        msg: "pas de connection ",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0
    );
    }
  }



Future<void> sentmail() async
 {



  String username = 'minsientreprise';
  String password = 'minsi2020';

  final smtpServer = gmail(username, password);
// leilasonyuy@gmail.com
  final message = Message()
    ..from = Address('$username@gmail.com', 'KEBHIPS')
    ..recipients.add('leilasonyuy@gmail.com')
    //..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
   // ..bccRecipients.add(Address('bccAddress@example.com'))
    ..subject = _subjectController.text
    ..text = "Nom : ${nomcontroler.text}\nPrenom : ${prenomcontroler.text}\nMail : ${mailcontroler.text}\nTelephone : ${telephonecontroler.text}\nBody: ${_bodyController.text}\n"
   ;

  try {
    final sendReport = await send(message, smtpServer);
    
    print('Message sent: ' + sendReport.toString());
    print('jai envoyer le message');
    _subjectController.clear();
    _bodyController.clear();
     Fluttertoast.showToast(
        msg: "mail bien envoyer ",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0
    );
    Navigator.of(context).pop();
  var connection = PersistentConnection(smtpServer);
  
  // Send the first message
  await connection.send(message);
  
  // send the equivalent message
  
  
  // close the connection
  await connection.close();



  } on MailerException catch (e) {
    print('Message not sent.  '+ e.toString());
     Fluttertoast.showToast(
        msg: "erreur  ",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0
    );
    for (var p in e.problems) {
      print('Problem: ${p.code}: ${p.msg}');
    }
  }
  
  
    
 
  
  // Sending multiple messages with the same connection
  //
  // Create a smtp client that will persist the connection


}
  





var nomColors=Colors.blue;
var telephoneColors=Colors.blue;
var bodyColors=Colors.blue;
     



  final _subjectController = TextEditingController();

  final _bodyController = TextEditingController( );

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();



TextEditingController nomcontroler = TextEditingController();
TextEditingController prenomcontroler = TextEditingController();
TextEditingController telephonecontroler = TextEditingController();
TextEditingController mailcontroler = TextEditingController();


String message="";

  @override
  Widget build(BuildContext context) {
      double longueur = MediaQuery.of(context).size.height;
    double largeur = MediaQuery.of(context).size.width;

  

    return MaterialApp(
      debugShowCheckedModeBanner: false,
theme: ThemeData(primaryColor: Colors.blue),
          home: new Scaffold(
            key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
          title: Text('Nous contacter', style: TextStyle(fontSize: 20.0),),
          actions: <Widget>[
          ],
        ),
            drawer: AppDrawer(),
            body: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height*0.88,
                      child: SingleChildScrollView(
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[

                              SizedBox(
                                height: longueur / 35,
                              ),
                              Row
                                (
                                children: <Widget>[
                                  SizedBox(
                                    width: largeur / 25,
                                  ),
                                  new Container(
                                    width: 23 * largeur / 25,

                                    padding: const EdgeInsets.only(bottom: 16.0),

                                    child: Theme(
                                      data: ThemeData(
                                          hintColor: nomColors
                                      ),
                                      child: TextField(
                                        keyboardType: TextInputType.text,

                                        controller: nomcontroler,
                                        onChanged: (text) {

                                        },
                                        decoration: new InputDecoration(
                                          filled: true,

                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(4),),
                                              //ici je gere la bordure  colors
                                              borderSide: BorderSide(width: 2,color: nomColors)
                                          ),
                                          labelText:(nomColors==Colors.blue)? "Nom *  : ":"Bien vouloir entrer votre nom", border: OutlineInputBorder(


                                        ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: largeur / 25,
                                  ),
                                ],
                              ),

                              Row
                                (
                                children: <Widget>[
                                  SizedBox(
                                    width: largeur / 25,
                                  ),
                                  new Container(
                                    width: 23 * largeur / 25,
                                    padding: const EdgeInsets.only(bottom: 16.0),
                                    child: TextField(
                                      keyboardType: TextInputType.text,
                                      controller: prenomcontroler,
                                      onChanged: (text) {

                                      },
                                      decoration: new InputDecoration(
                                        labelText: "Prenom   : ", border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: largeur / 25,
                                  ),
                                ],
                              ),



                              Row
                                (
                                children: <Widget>[
                                  SizedBox(
                                    width: largeur / 25,
                                  ),
                                  new Container(
                                    width: 23 * largeur / 25,
                                    padding: const EdgeInsets.only(bottom: 16.0),
                                    child: Theme(
                                      data: ThemeData(
                                          hintColor: telephoneColors
                                      ),
                                      child: TextField(
                                        keyboardType: TextInputType.phone,
                                        controller: telephonecontroler,
                                        onChanged: (text) {

                                        },
                                        decoration: new InputDecoration(
                                          filled: true,

                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(4),),
                                              //ici je gere la bordure  colors
                                              borderSide: BorderSide(width: 2,color: telephoneColors)
                                          ),
                                          labelText:(telephoneColors==Colors.blue)? "Telephone *  : ":"Bien vouloir entrer votre numero", border: OutlineInputBorder(


                                        ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: largeur / 25,
                                  ),
                                ],
                              ),



                              Row
                                (
                                children: <Widget>[
                                  SizedBox(
                                    width: largeur / 25,
                                  ),
                                  new Container(

                                    width: 23 * largeur / 25,
                                    padding: const EdgeInsets.only(bottom: 16.0),
                                    child: TextField(
                                      keyboardType: TextInputType.emailAddress,
                                      controller: mailcontroler,
                                      onChanged: (text) {

                                      },
                                      decoration: new InputDecoration(
                                        labelText: "Mail : ", border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: largeur / 25,
                                  ),
                                ],
                              ),


                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  controller: _subjectController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Subject',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Theme(
                                  data: ThemeData(
                                      hintColor: bodyColors
                                  ),
                                  child: TextField(
                                      controller: _bodyController,
                                      maxLines: 10,
                                      decoration: new InputDecoration(
                                        filled: true,

                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(4),),
                                            //ici je gere la bordure  colors
                                            borderSide: BorderSide(width: 2,color: nomColors)
                                        ),
                                        labelText:(bodyColors==Colors.blue)? "Body *  : ":"Bien vouloir entrer votre message", border: OutlineInputBorder(
                                      ),
                                      )
                                  ),
                                ),
                              ),
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
                              ),
                              SizedBox(height: 2.0,),
                            ],
                          ),
                        ),
                      ),
                    ),


                  ],
                ),

              ],
            ),
       
       floatingActionButton: FloatingActionButton.extended(
            icon: Icon(Icons.send),
            label: Text('Envoyer'), onPressed: () {

              if(nomcontroler.text.length>0&&
              telephonecontroler.text.length>0&&
              _bodyController.text.length>0
        
              
              
              ){
                testConnection();
              }else{


 if(nomcontroler.text.length==0
        
              
              
              ){
                    setState(() {
                      nomColors=Colors.red;
                    });
              }else{
                setState(() {
                      nomColors=Colors.blue;
                    });
              }


               if(telephonecontroler.text.length==0
        
              
              
              ){
                       setState(() {
                      telephoneColors=Colors.red;
                    });
              }else{
                 setState(() {
                      telephoneColors=Colors.blue;
                    });
              }

               if(_bodyController.text.length==0
        
              
              
              ){
                      setState(() {
                      bodyColors=Colors.red;
                    });
              }else{
                setState(() {
                      bodyColors=Colors.blue;
                    });
              }
              }
            },
          ),
      ),
    );
  }

 
}

  
