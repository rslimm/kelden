import 'package:flutter/material.dart';
import 'package:kebhips/Model/Course.dart';
import 'package:kebhips/Pages/CourseDetaiPage.dart';

import '../main.dart';

class CertificationsSpecialitiesPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new ListPage(title: 'CERTIFICATIONS'),
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
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: new Text("CERTIFICATIONS", textAlign: TextAlign.center,),
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
        title: "ACCA",
        //level: "Beginner",
        //indicatorValue: 0.33,
        price: 20,
        content:
        "Objectifs:\n"
            " ACCA stands for the Association of Chartered Certified Accountants a leading international accountancy body. The ACCA qualification is recognised and is treated in other countries as being equivalent to their local qualification. The ACCA qualification proves to employers that you have ability in all aspects of business.It is the largest and fastest growing qualification in the world, with over 500,000 members and students in 170 countries.\n\n"
            "Débouchés:\n"
            "An ACCA can work across fields as a Management Accountant, Finance Manager, Financial or Business Analyst, Financial Consultant, Management Consultant, Financial Planner."
    ),
    Course(
        title: "Robotics",
        //level: "Beginner",
        //indicatorValue: 0.33,
        price: 20,
        content:
        "Objectifs:\n"
            "The Robotics/Automated Systems certificate is intended for individuals who have earned a previous degree or have significant work related experience in the manufacturing industry. Students without any or limited previous related experience in manufacturing technology are encouraged to enroll in the program. Also, High school graduates who wish to begin a career in robotics, automation and who wish to work in the manufacturing industry can enroll into this program.\n\n"
            "Débouchés:\n"
            "Mechanical Engineers, Aerospace Engineering and Operations Technicians, Electro-mechanical Technicians, Sales Engineers, Computer and Information Research Scientists, Computer Programmers."
    ),
    Course(
        title: "Computer Aided Design",
        //level: "Beginner",
        //indicatorValue: 0.33,
        price: 20,
        content:
        "Objectifs:\n"
            "(CAD.IL.CT) This program leads to a certificate in CAD Engineering Technology. Program graduates are prepared for occupations and careers in engineering and manufacturing industries. Rapid Prototyping and co-op opportunities enhance their learning experience. The CAD Engineering option focuses on design with an emphasis on concepts and applications of CAD Engineering Technologies. CAE covers subjects such as: the applications and principles of kinematics in design, concepts and techniques of finite element modeling for stress analysis / non-destructive testing, techniques and applications of solid modeling, and CNC tool path generation for CAD models. Students without any or limited previous related experience in manufacturing technology are encouraged to enroll in the program. Also, High school graduates who wish to begin a career in robotics, automation and who wish to work in the manufacturing industry can enroll into this program.\n\n"
            "Débouchés:\n"
            "Architectural drafting, Mechanical drafting, Electronics drafting, Civil construction drafting."
    ),
    Course(
        title: "CISCO",
        //level: "Beginner",
        //indicatorValue: 0.33,
        price: 20,
        content:
        "Objectifs:\n"
            "The Interconnecting Cisco Networking Devices: Accelerated (CCNAX) v3.0 course teaches you how to install, operate, configure, and verify a basic Internet Protocol version 4 (IPv4) and Internet Protocol version 6 (IPv6) network, including configuring a LAN switch, configuring an IP router, connecting to a WAN, and identifying basic security threats. You will also learn how to perform basic troubleshooting steps in enterprise branch office networks, as well as prepare for Cisco® Certified Network Associate (CCNA) certification. The course covers the elements of Quality of Service (QoS) and their applicability, explores how virtualized and cloud services interact and impact enterprise networks, and provides an overview of network programmability with the related controller types and tools that are available to support Software-Defined Networking (SDN) architectures. You’ll also gain an understanding of the interactions and network functions of firewalls, wireless controllers, and access points, along with additional focus on IPv6 and basic network security. This course consists of two courses merged into a single course.\n\n"
            "Interconnecting Cisco Networking Devices, Part 1 (ICND1) and\n"
            "Interconnecting Cisco Networking Devices, Part 2 (ICND2).\n\n"
            "Possible jobs opportunities:\n"
            "Technical Solutions Architect - Optical, Datacenter Technical Systems Architect, Network Engineer, Network Administrator, Technical Support Engineer... ."
    ),
    Course(
        title: "Amazon Web Services",
        //level: "Beginner",
        //indicatorValue: 0.33,
        price: 20,
        content:
        "Objectifs:\n"
            "AWS is fast becoming the must have certificates for any IT professional working with AWS. This course is designed to help you pass the AWS Certified Solutions Architect (CSA) - Associate Exam. Even if you have never logged in to the AWS platform before, by the end of our AWS training you will be able to take the CSA exam. No programming knowledge needed and no prior AWS experience required. With this AWS certification under your belt (and optionally after completing our AWS Certified Developer), you will be in high demand by many employers and you can command a superior salary.\n\n"
            "Débouchés:\n"
            "AWS Cloud Architect, SysOps Administrator, Cloud Developer, Cloud Sales & Purchase Manager, Cloud DevOps Engineer, Cloud Software Engineer, AWS Networking Specialist."
    ),



  ];
}
