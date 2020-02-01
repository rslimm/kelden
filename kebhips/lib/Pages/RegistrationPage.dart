import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class Inscription extends StatefulWidget{




  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {



  Future<void> sentmail() async
  {





    String username = 'minsientreprise';
    String password = 'minsi2020';

    final smtpServer = gmail(username, password);
// leilasonyuy@gmail.com
    final message = Message()
      ..from = Address('$username@gmail.com', 'KEBHIPS INSCRIPTION')
      ..recipients.add('leilasonyuy@gmail.com')
    //..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
    // ..bccRecipients.add(Address('bccAddress@example.com'))
      ..subject = "Inscription de : ${nomcontroler.text}"
      ..text = "Nom : ${nomcontroler.text} \nPrenom : ${prenomcontroler.text} \nTelephone : ${telephonecontroler.text} \nMail : ${mailcontroler.text} \nVille : ${villecontroler.text} \nMessage : ${messagecontroler.text} \nPrograme $programechoisi\nSpecialite :$specialitechoisi"
    ;

    try {
      final sendReport = await send(message, smtpServer);

      print('Message sent: ' + sendReport.toString());
      print('jai envoyer le message');

      var connection = PersistentConnection(smtpServer);

      // Send the first message
      await connection.send(message);

      // send the equivalent message


      // close the connection
      await connection.close();



    } on MailerException catch (e) {
      print('Message not sent.  '+ e.toString());
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }





    // Sending multiple messages with the same connection
    //
    // Create a smtp client that will persist the connection


  }


  TextEditingController nomcontroler = TextEditingController();
  TextEditingController prenomcontroler = TextEditingController();
  TextEditingController telephonecontroler = TextEditingController();
  TextEditingController mailcontroler = TextEditingController();
  TextEditingController villecontroler = TextEditingController();
  TextEditingController messagecontroler = TextEditingController();





  List<String>programe=["bts","licence","docto"];
  List<String>specialitebts=["bts","bts2","bts3"];
  List<String>specialiteLicence=["licence1","licence2","licence3"];
  List<String>specialiteDoctorat=["doctorat1","doctorat2","doctorat3"];
  List<String>specialitevide=new List();

  String programechoisi="";
  String specialitechoisi="";

  List<List<String>>specialiteGeneral=new List();
  int choix=0;


  void initState() {
    super.initState();
    setState(() {
      specialiteGeneral.add(specialitevide);
      specialiteGeneral.add(specialitebts);
      specialiteGeneral.add(specialiteLicence);
      specialiteGeneral.add(specialiteDoctorat);
    });
  }





  @override
  Widget build(BuildContext context) {
    double longueur = MediaQuery.of(context).size.height;
    double largeur = MediaQuery.of(context).size.width;



    return new
    Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        resizeToAvoidBottomPadding: true,

        appBar: AppBar(
          backgroundColor:  Colors.pinkAccent,
          title: Text('Inscription'),
          actions: <Widget>[

          ],
        ),
        body:  ListView
          (
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: longueur / 20,
                ),

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
                      child: TextField(
                        keyboardType: TextInputType.text,
                        controller: nomcontroler,
                        onChanged: (text) {

                        },
                        decoration: new InputDecoration(
                          labelText: "Nom *  : ", border: OutlineInputBorder(),
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
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        controller: telephonecontroler,
                        onChanged: (text) {

                        },
                        decoration: new InputDecoration(
                          labelText: "Telephone *  : ", border: OutlineInputBorder(),
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
                        controller: villecontroler,
                        onChanged: (text) {

                        },
                        decoration: InputDecoration(
                            labelText: 'Ville *', border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(
                      width: largeur / 25,
                    ),
                  ],
                ),

                SizedBox(
                  height: longueur / 35,
                ),



                Row
                  (
                  children: <Widget>[
                    SizedBox(
                      width: largeur / 25,
                    ),
                    new Container
                      (
                      width: 23 * largeur / 25,
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child:        DropdownButton<String>
                        (

                        isExpanded: true,
                        elevation: 12,
                        items: programe.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        hint: Container(
                            width: largeur*0.8,
                            child: Text("Programme* : $programechoisi",style:TextStyle( fontWeight: FontWeight.bold, color: Colors.black,fontSize: 20) ,)
                        ),
                        onChanged: (value) {
                          setState(() {
                            programechoisi=value;
                            choix=programe.indexOf(value)+1;
                            specialitechoisi="";
                          });



                        },
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
                    new Container
                      (
                      width: 23 * largeur / 25,
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child:        DropdownButton<String>
                        (

                        isExpanded: true,
                        elevation: 12,
                        items: specialiteGeneral[choix].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        hint: Container(
                            width: largeur*0.8,
                            child: Text("Speciatite : $specialitechoisi",style:TextStyle( fontWeight: FontWeight.bold, color: Colors.black,fontSize: 20) ,)
                        ),
                        onChanged: (value) {

                          setState(() {
                            specialitechoisi=value;
                          });



                        },
                      ),


                    ),










                    SizedBox(
                      width: largeur / 25,
                    ),
                  ],
                ),





























                SizedBox(
                  height: longueur / 35,
                ),
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
                      height: longueur / 6,

                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        controller: messagecontroler,
                        decoration: InputDecoration(
                            labelText: 'Message additionnel ${300-messagecontroler.text.length}', border: OutlineInputBorder()),
                        onSubmitted: (text) {
                          print("suis dehor ");
                        },
                        expands: true,
                        maxLines: null,
                        minLines: null,
                        onChanged: (text) {

                          setState(() {

                          });
                        },
                        showCursor: true,

                      ),
                    ),
                    SizedBox(
                      width: largeur / 25,
                    ),
                  ],
                ),





                GestureDetector
                  (
                  onTap: () {


                    sentmail();



                  },
                  child: Center(
                    child: Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        height: 60.0,
                        child: Material(
                            borderRadius: BorderRadius.circular(9.0),
                            color: Colors.blue,
                            child: Center(
                                child: Text(
                                  'Valider',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                )))),
                  ),
                ),

              ],
            )
          ],
        )





    );



  }


}


