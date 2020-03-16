import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';


class SocialMediaPage extends StatefulWidget {
  @override
  _SocialMediaPageState createState() => _SocialMediaPageState();
}

class _SocialMediaPageState extends State<SocialMediaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Follow us', textAlign: TextAlign.center),
        backgroundColor: Colors.blue[900],
      ),
        drawer: AppDrawer(),
        body: ListView(
        children: <Widget>[
          Center(
            child: new Column(
              children: <Widget>[
                SizedBox(
                  width: 120.0,
                  height: 180.0,
                  child: GestureDetector(
                      onTap: () async{
                        await launch('https://web.facebook.com/kebhips');
                      },
                      child: Image.asset('assets/facebook-icon.jpg')
                  ),

                ),
                SizedBox(
                  width: 120.0,
                  height: 180.0,
                  child: GestureDetector(
                      onTap: () async{
                        await launch('https://twitter.com/kebhips');
                      },
                      child: Image.asset('assets/twitter-logo.jpg')
                  ),

                ),
                SizedBox(
                  width: 120.0,
                  height: 180.0,
                  child: GestureDetector(
                      onTap: () async{
                        await launch('https://www.linkedin.com/in/institute-kelden-0a6274197/');
                      },
                      child: Image.asset('assets/linkedin.jpg')
                  ),

                ),
                SizedBox(
                  width: 120.0,
                  height: 180.0,
                  child: GestureDetector(
                      onTap: () async{
                        await launch('https://www.keldeninstitute.com');
                      },
                      child: Image.asset('assets/logo-off-kelden-v.png')
                  ),

                ),
              ],
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
          )

        ],
      )
    );
  }
}




