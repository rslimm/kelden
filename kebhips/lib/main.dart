import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/services.dart';
import 'package:kebhips/Pages/AdministrationPage.dart';
import 'package:kebhips/Pages/AdmissionDashboard.dart';
import 'package:kebhips/Pages/GalleryPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Pages/CampusLife.dart';
import 'Pages/RegistrationPage.dart';
import 'Pages/NousContacter.dart';
import 'Pages/OnlineCoursesPage.dart';
import 'Pages/SocialMaediaPage.dart';
import 'Pages/Test.dart';
import 'Pages/TimeTablePage1.dart';
import 'package:marquee_widget/marquee_widget.dart';



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
      title: 'K E B H I P S',
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
               ListTile(
          title: Text("Programmes", ),
          trailing: Icon(Icons.table_chart,color: Colors.black,),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TimeTablePage()));
          },
        ),
         
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
               ListTile(
          title: Text("Admission", ),
          trailing: Icon(Icons.school,color: Colors.black,),
          onTap: () {
            Navigator.of(context).pop();
          Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AdmissionDashboard()));
          },
        ),
         

        //  _createDrawerItem(icon: Icons.person_add, text: 'Inscription',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
             ListTile(
          title: Text("Cours en ligne", ),
          trailing: Icon(Icons.leak_add,color: Colors.black,),
          onTap: () {
            Navigator.of(context).pop();
          Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OnlineCoursesPage()));
          },
        ),

          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          ListTile(
            title: Text("Vie au Campus", ),
            trailing: Icon(Icons.favorite,color: Colors.black,),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CampusLifePage ()));
            },
          ),

          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),

          ListTile(
            title: Text("Administration", ),
            trailing: Icon(Icons.dashboard,color: Colors.black,),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SocialMediaPage()));
            },
          ),
         
         
        
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
             ListTile(
          title: Text("Réseaux Sociaux", ),
          trailing: Icon(Icons.accessibility_new,color: Colors.black,),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SocialMediaPage()));
          },
        ),
        
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
             ListTile(
          title: Text("Galerie", ),
          trailing: Icon(Icons.picture_in_picture,color: Colors.black,),
          onTap: () {
            Navigator.of(context).pop();
        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GalleryPage()));
          },
        ),
      
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
             ListTile(
          title: Text("Contactez nous", ),
          trailing: Icon(Icons.message,color: Colors.black,),
          onTap: () {
            Navigator.of(context).pop();
          Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NousContacter()));
          },
        ),
         
          
           ListTile(
            title: Text('EXIT'),
             trailing: Icon(Icons.exit_to_app,color: Colors.black,),
            onTap: (){
SystemNavigator.pop();
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
    getprefconnecter();
  }
     getprefconnecter() async 
   {
    String value;
    SharedPreferences preffConnecter = await SharedPreferences.getInstance();
    
    setState(() {
      
      value = preffConnecter.getString("connecter");
      if(value=="oui"){
        connecter=true;
      }

   
    });
  }
  bool connecter=false;

  void deactivate()
  {
    super.deactivate();
    getprefconnecter();
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

     double longueur = MediaQuery.of(context).size.height;
    double largeur = MediaQuery.of(context).size.width;

    Widget carousel = new Carousel(
      boxFit: BoxFit.cover,
      images: [
        new AssetImage('assets/s3.jpg'),
        new AssetImage('assets/s2.jpg'),
        new AssetImage('assets/imgSport.jpg'),
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




    String gridImage;
    String gridName;
    Flexible avecInscription(){
      return Flexible(   child: Container(
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
                    color: Colors.cyan,
                    elevation: 4.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.table_chart, size: 50.0, color: Colors.white,)),
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
                        MaterialPageRoute(builder: (context) => AdmissionDashboard()));
                  },
                  child: new Card(
                    color: Colors.deepPurple,
                    elevation: 4.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.school, size: 50.0, color: Colors.white,)),
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
                        MaterialPageRoute(builder: (context) => RegistrationPage()));
                  },
                  child: new Card(
                    color: Colors.pinkAccent,
                    elevation: 4.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.person_add, size: 50.0, color: Colors.white,)),
                        new Text('Inscription', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ),

              Container(
                child: GestureDetector(
                  onTap: (){
                  //connais pas le fichier qui gere OnlineCoursesPage
                   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OnlineCoursesPage()));
                  },
                  child: new Card(
                    color: Colors.teal[900],
                    elevation: 4.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.leak_add, size: 50.0, color: Colors.white,)),
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
                        MaterialPageRoute(builder: (context) => CampusLifePage()));

                  },
                  child: new Card(
                    color: Colors.amber,
                    elevation: 4.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.favorite, size: 50.0, color: Colors.white,)),
                        new Text('Vie au Campus', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

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
                        MaterialPageRoute(builder: (context) => AdministrationPage()));
                  },
                  child: new Card(
                    color: Colors.deepPurpleAccent,
                    elevation: 4.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.dashboard, size: 50.0, color: Colors.white,)),
                        new Text('Administration', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

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
                        MaterialPageRoute(builder: (context) => SocialMediaPage()));
                  },
                  child: new Card(
                    color: Colors.indigoAccent,
                    elevation: 4.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.accessibility_new, size: 50.0, color: Colors.white,)),
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
                        MaterialPageRoute(builder: (context) => GalleryPage()));
                  },
                  child: new Card(
                    color: Colors.deepOrange,
                    elevation: 4.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.picture_in_picture, size: 50.0, color: Colors.white,)),
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
                        MaterialPageRoute(builder: (context) => NousContacter()));
                  },
                  child: new Card(
                    color: Colors.tealAccent,
                    elevation: 4.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.message, size: 50.0, color: Colors.white,)),
                        new Text('Laisser un message', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),);
    }
      Flexible sansInscription(){
      return Flexible(   child: Container(
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
                    color: Colors.cyan,
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                          Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.table_chart, size: 50.0, color: Colors.white,)),
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
                        MaterialPageRoute(builder: (context) => AdmissionDashboard()));
                  },
                  child: new Card(
                    color: Colors.deepPurple,
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.school, size: 50.0, color: Colors.white,)),
                        new Text('Admission', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ),

           

              Container(
                child: GestureDetector(
                  onTap: (){
                  //connais pas le fichier qui gere OnlineCoursesPage
                   Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OnlineCoursesPage()));
                  },
                  child: new Card(
                    color: Colors.teal[900],
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.leak_add, size: 50.0, color: Colors.white,)),
                        new Text('Cours en ligne', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ),


              Container(
                child: GestureDetector(
                  onTap: (){
                 
                  },
                  child: new Card(
                    color: Colors.amber,
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.accessibility_new, size: 50.0, color: Colors.white,)),
                        new Text('Vie au Campus', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

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
                        MaterialPageRoute(builder: (context) => SocialMediaPage()));
                  },
                  child: new Card(
                    color: Colors.teal,
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.accessibility_new, size: 50.0, color: Colors.white,)),
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
                        MaterialPageRoute(builder: (context) => GalleryPage()));
                  },
                  child: new Card(
                    color: Colors.deepOrange,
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.picture_in_picture, size: 50.0, color: Colors.white,)),
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
                        MaterialPageRoute(builder: (context) => NousContacter()));
                  },
                  child: new Card(
                    color: Colors.indigoAccent,
                    elevation: 4.5,
                    child: Column(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 10.0),child: new Icon(Icons.message, size: 50.0, color: Colors.white,)),
                        new Text('Laisser un message', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),);
    }
    return new Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text('K E B H I P S', textAlign: TextAlign.center, style: TextStyle(fontSize: 40.0,),),
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

  Marquee(
      child: Text('This project is a starting point for a Dart package, a library module containing code that can be shared easily across multiple Flutter or Dart projects. This project is a starting point for a Dart package, a library module containing code that can be shared easily across multiple Flutter or Dart projects.', style: TextStyle(fontSize: 20.0),
      ),
    textDirection: TextDirection.ltr,
    animationDuration: Duration(seconds: 30),
    directionMarguee: DirectionMarguee.oneDirection,


  ),
  avecInscription(),

     ],

      ),

      bottomSheet: Text('KEBHIPS © ${DateTime.now().year.toString()}. Powered by :MINSE:', textAlign: TextAlign.end,),

    );


  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}
