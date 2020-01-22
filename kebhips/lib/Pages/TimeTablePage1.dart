import 'package:flutter/material.dart';
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
          backgroundColor: Colors.blue[900],
        title: Text('Programmes'),
      ),
      drawer: AppDrawer(),
      body: new Column(
        children: <Widget>[
          //new GradientAppBar("K E B H I P S"),
          new TimeTablePage2(),
        ],
      ),
    );
  }
}


class AppDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(icon: Icons.table_chart, text: 'Programmes',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.school, text: 'Admission',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.account_balance_wallet, text: 'Pensions',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.person_add, text: 'Inscription',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.leak_add, text: 'Cours en ligne',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.event, text: 'Evènements',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.group, text: 'Partenaires',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.accessibility_new, text: 'Réseaux Sociaux',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.picture_in_picture, text: 'Galerie',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.message, text: 'Contactez nous',),
          ListTile(
            title: Text('KEBHIPS'),
            onTap: (){

            },
          )


        ],
      ),
    );
  }
}



Widget _createDrawerItem({
  IconData icon, String text, GestureTapCallback onTap
}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0, top: 0.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}


Widget _createHeader(){
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/logo-off-kelden-v.png'))
      ),
  );
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
