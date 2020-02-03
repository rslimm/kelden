import 'package:flutter/material.dart';
import 'package:kebhips/Model/Course.dart';
import 'package:kebhips/Pages/CourseDetaiPage.dart';

class HndSpecialitiesPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new ListPage(title: 'Spécialités BT'),
      // home: DetailPage(),
    );
  }
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List lessons;

  @override
  void initState() {
    lessons = getCourses();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Course course) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(Icons.school, color: Colors.white),
      ),
      title: Text(
        course.title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Row(
        children: <Widget>[

          /*

          Expanded(
              flex: 1,
              child: Container(
                // tag: 'hero',
                child: LinearProgressIndicator(
                    backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                    value: course.indicatorValue,
                    valueColor: AlwaysStoppedAnimation(Colors.green)),
              )
          ),

         */

          /*

          Expanded(
            flex: 4,

          /*
            child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(course.level,
                    style: TextStyle(color: Colors.white)
                )
            ),
          */

          )

          */

        ],
      ),
      trailing:
      Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CourseDetailPage(course: course)));
      },
    );

    Card makeCard(Course lesson) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.blue[900]),
        child: makeListTile(lesson),
      ),
    );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(lessons[index]);
        },
      ),
    );

    final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.blur_on, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.hotel, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_box, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],
    );

    return Scaffold(

      backgroundColor: Color(0xFF736AB7),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: new Text("Spécilialités BTS", textAlign: TextAlign.center,),
      ),
      drawer: AppDrawer(),
      body: makeBody,
      //bottomNavigationBar: makeBottom,
    );
  }
}

List getCourses() {
  return [
    Course(
        title: "Assistant Manager",
        //level: "Beginner",
        //indicatorValue: 0.33,
        price: 20,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
    Course(
        title: "Project Management",
        //level: "Beginner",
        //indicatorValue: 0.33,
        price: 50,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
    Course(
        title: "Human Resource Management",
        //level: "Intermidiate",
        //indicatorValue: 0.66,
        price: 30,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
    Course(
        title: "Logistics and Transports",
        //level: "Intermidiate",
        //indicatorValue: 0.66,
        price: 30,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
    Course(
        title: "Local Goverment Management",
        //level: "Advanced",
        //indicatorValue: 1.0,
        price: 50,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
    Course(
        title: "Accountancy",
        //level: "Advanced",
        //indicatorValue: 1.0,
        price: 50,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
    Course(
        title: "Marketing Trade Sale",
        //level: "Advanced",
        //indicatorValue: 1.0,
        price: 50,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
    Course(
        title: "Banking and Finance",
        //level: "Advanced",
        //indicatorValue: 1.0,
        price: 50,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
    Course(
        title: "Microfinance",
        //level: "Advanced",
        //indicatorValue: 1.0,
        price: 50,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
    Course(
        title: "Insurance",
        //level: "Advanced",
        //indicatorValue: 1.0,
        price: 50,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
    Course(
        title: "Didactics, Curriculum Development and Teaching",
        //level: "Advanced",
        //indicatorValue: 1.0,
        price: 50,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
    Course(
        title: "Education Management and administration",
        //level: "Advanced",
        //indicatorValue: 1.0,
        price: 50,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
    Course(
        title: "Software Engineering",
        //level: "Advanced",
        //indicatorValue: 1.0,
        price: 50,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
    Course(
        title: "Database Management",
        //level: "Advanced",
        //indicatorValue: 1.0,
        price: 50,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
    Course(
        title: "Hardware Maitenance",
        //level: "Advanced",
        //indicatorValue: 1.0,
        price: 50,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
    Course(
        title: "Tax Management",
        //level: "Advanced",
        //indicatorValue: 1.0,
        price: 50,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
    Course(
        title: "Custom and Transit",
        //level: "Advanced",
        //indicatorValue: 1.0,
        price: 50,
        content:
        "Objectifs:\n"
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.\n"
            "Débouchés:\n"
            "Texte"
    ),
  ];
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
          _createDrawerItem(icon: Icons.person_add, text: 'Inscription',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.leak_add, text: 'Cours en ligne',),
          new Divider(
            color: Colors.amber.withOpacity(0.9),
          ),
          _createDrawerItem(icon: Icons.group, text: 'Vie au campus',),
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
          _createDrawerItem(icon: Icons.message, text: 'Laissez un message',),
          ListTile(
            title: Text('KEBHIPS © ${DateTime.now().year.toString()}'),
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