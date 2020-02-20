import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


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
        ],
      )
    );
  }
}




