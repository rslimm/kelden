import 'package:flutter/material.dart';

import '../../main.dart';

class NotreHistoire extends StatefulWidget {
  @override
  _NotreHistoireState createState() => _NotreHistoireState();
}

class _NotreHistoireState extends State<NotreHistoire> {
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
          new SizedBox(height: 15.0,),
          new Text('Notre Histoire', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(15.0),
            child: new Text('KEBHIPS started in 2014 as a small orientation center, offering consultancy services on public finance management.Later that same year it became a focal point offering assistance to Councils and decentralised structures in matters of local governance.'
                'In 2016,the center was officially approved by the Ministry of Employment and Vocational Training as a Professional training center for Council Administration and Public Finance Management, with the name Keldon Bilingual institute of Professional Studies. Our excellent results gave an exponential confidence rating both nationally and internationally. As a result, in 2018,the government up graded the center to a University Institute, with the name Kelden Bilingual Higher institute of Professional Studies.'
                'Today, Kelden Institute stands out as a reference to professional education in Cameroon and within the CEMAC sub region. Beside the variety of our specially designed national programmes, we equally offer internationally recognised Certifications in ACCA, Cisco networking, Amazon Web Services, Computer Aided Designs and Robostics.',
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
