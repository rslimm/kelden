import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/services.dart';
import 'Pages/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'Pages/Test.dart';
import 'Pages/TimeTablePage1.dart';
import 'package:flutter_icons/flutter_icons.dart';



void main() => runApp(new MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
    ]);

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Carousel',
      home: ImageCarousel(),
    );
  }
}

class ImageCarousel extends StatefulWidget {
  _ImageCarouselState createState() => new _ImageCarouselState();
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
            image: AssetImage('assets/s1.jpg'))
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("KEBHIPS",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 50.0,
              fontWeight: FontWeight.w500
            ),
            ),
          )
        ],
      ));
}


class _ImageCarouselState extends State<ImageCarousel> with SingleTickerProviderStateMixin {


  Animation<double> animation;
  AnimationController controller;


  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = new Tween(begin: 0.0, end: 18.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;


    Widget carousel = new Carousel(
      boxFit: BoxFit.cover,
      images: [
        new AssetImage('assets/s3.jpg'),
        new AssetImage('assets/s2.jpg'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds:2),
    );

    Widget banner = new Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
      child: new Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0)),
          color: Colors.amber.withOpacity(0.5),
        ),
        padding: const EdgeInsets.all(10.0),
        child: new Text(
          'Enter to Learn, Leave to Achieve',
          style: TextStyle(
            fontFamily: 'fira',
            fontSize: animation.value, //18.0,
            //color: Colors.white,
          ),
        ),
      ),
      // ),
      //  ),
    );



/*


    Widget myGridItems (String gridName,  Color color1, Color color2){
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            gradient: new LinearGradient(
              colors: [
                color1,
                color2,
              ],
              begin: Alignment.centerLeft,
              end:  new Alignment(1.0, 1.0),
            )
        ),
        child: Stack(
          children: <Widget>[
            Opacity(
              opacity: 1.0,
              child: Container(
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    image: DecorationImage(
                        image: AssetImage('assets/s1.jpg'),
                        fit: BoxFit.fill)
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //Container(child: Text("Job", style: TextStyle(color: Colors.white, fontSize: 16),)),
                    //SizedBox(width: 10.0),
                    //Container(child: Icon(Icons.print, color: Colors.white, size: 50.0,)),
                    //SizedBox(width: 10.0),
                    //Container(child: Text("Guide", style: TextStyle(color: Colors.white, fontSize: 16),)),
                  ],
                ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(gridName, style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                ),
              ],
            )
          ],
        ),
      );
    }

    */









    String gridImage;
    String gridName;
    return new Scaffold(

      appBar: AppBar(
        title: Text('Kelden Bilingual Higher Institute of Professional Studies\n'
                    'Accord N° 18-1020/L/MINSUP/SG/DDES/SD-ESUP/SDA/LMN du 03/12/2018\n'
                    'Arrêté N° 078/MINEFOP/SG/DFOP/SDGSF/SACD du 13/03/2017', textAlign: TextAlign.center, style: TextStyle(fontSize: 9.5,),),
      ),

      backgroundColor: Colors.blue[200],

      drawer: AppDrawer(),
      body: new Column(
        children: <Widget>[
          //new GradientAppBar("K E B H I P S"),
          new Container(
      padding: const EdgeInsets.fromLTRB(0, 1.0, 0, 10.0),
      height: screenHeight / 3,
      child: new ClipRRect(
        borderRadius: BorderRadius.circular(0.0),
        child: new Stack(
          children: [
              carousel,
              banner,
          ],
        ),
      ),



    ),




      Flexible(
        child: Container(
          margin: EdgeInsets.only(top: 10.0),
          child: GridView.count(
            crossAxisCount: 3,
            padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
            childAspectRatio: 0.9,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: <Widget>[
              Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TimeTablePage()));
                  },
                  child: new Card(
                    color: Colors.amberAccent.withOpacity(0.7),
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                          Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.table_chart, size: 50.0, color: Colors.cyanAccent,)),
                          new Text('Programmes', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ),

              Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: new Card(
                    color: Colors.amberAccent.withOpacity(0.7),
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.school, size: 50.0, color: Colors.cyanAccent,)),
                        new Text('Admission', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ),

              Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: new Card(
                    color: Colors.amberAccent.withOpacity(0.7),
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.account_balance_wallet, size: 50.0, color: Colors.cyanAccent,)),
                        new Text('Pensions', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ),

              Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: new Card(
                    color: Colors.amberAccent.withOpacity(0.7),
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.person_add, size: 50.0, color: Colors.cyanAccent,)),
                        new Text('Inscription', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ),

              Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: new Card(
                    color: Colors.amberAccent.withOpacity(0.7),
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.leak_add, size: 50.0, color: Colors.cyanAccent,)),
                        new Text('Cours en ligne', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ),

              Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: new Card(
                    color: Colors.amberAccent.withOpacity(0.7),
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.event, size: 50.0, color: Colors.cyanAccent,)),
                        new Text('Evènements', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ),

              Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: new Card(
                    color: Colors.amberAccent.withOpacity(0.7),
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.supervised_user_circle, size: 50.0, color: Colors.cyanAccent,)),
                        new Text('Partenaires', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ),

              Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: new Card(
                    color: Colors.amberAccent.withOpacity(0.7),
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.accessibility_new, size: 50.0, color: Colors.cyanAccent,)),
                        new Text('Réseaux Sociaux', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ),

              Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: new Card(
                    color: Colors.amberAccent.withOpacity(0.7),
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.picture_in_picture, size: 50.0, color: Colors.cyanAccent,)),
                        new Text('Galerie', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ),

              Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: new Card(
                    color: Colors.amberAccent.withOpacity(0.7),
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.message, size: 50.0, color: Colors.cyanAccent,)),
                        new Text('Laisser un message', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )

        ],

      ),


    );
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}