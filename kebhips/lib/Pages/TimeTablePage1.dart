import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../main.dart';
import 'CardRow.dart';
import 'TimeTablePage2.dart';


class TimeTablePage extends StatefulWidget {
  @override
  _TimeTablePageState createState() => _TimeTablePageState();
}

class _TimeTablePageState extends State<TimeTablePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        title: Text('Programmes', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),),
      ),
      drawer: AppDrawer(),
      body: new Column(
        children: <Widget>[
          //new GradientAppBar("K E B H I P S"),
          new TimeTablePage2(),
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
      ),

   
    );
  }
}


class GradientAppBar extends StatelessWidget {

  final String title;
  final double barHeight = 66.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return new Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: new Center(
        child: new Text(title,
          style:const TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 36.0
          ),
        ),
      ),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              const Color(0xFF3366FF),
              const Color(0xFF00CCFF)
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
        ),
      ),
    );
  }

}
