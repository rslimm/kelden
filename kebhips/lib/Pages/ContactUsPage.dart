import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class NousContacter extends StatefulWidget{




  @override
  _NousContacterState createState() => _NousContacterState();
}

class _NousContacterState extends State<NousContacter> {



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
      ..text = _bodyController.text
    ;

    try {
      final sendReport = await send(message, smtpServer);

      print('Message sent: ' + sendReport.toString());
      print('jai envoyer le message');
      _subjectController.clear();
      _bodyController.clear();
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











  final _subjectController = TextEditingController(text: 'The subject');

  final _bodyController = TextEditingController(
    text: 'Mail body.',
  );

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();



  TextEditingController smscontroler = TextEditingController();



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
          title: Text('Nous contacter'),
          actions: <Widget>[

          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

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
                    child: TextField(
                      controller: _bodyController,
                      maxLines: 10,
                      decoration: InputDecoration(
                          labelText: 'Body', border: OutlineInputBorder()),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.send),
          label: Text('Envoyer'), onPressed: () {
          sentmail();
        },

        ),
      ),
    );
  }


}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  return null;
}
