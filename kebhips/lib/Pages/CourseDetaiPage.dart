import 'package:kebhips/Model/Course.dart';
import 'package:flutter/material.dart';


class CourseDetailPage extends StatelessWidget {
  final Course course;
  CourseDetailPage({Key key, this.course}) : super(key: key);
  @override
  Widget build(BuildContext context) {

   /*

    final levelIndicator = Container(
      child: Container(
        child: LinearProgressIndicator(
            backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
            value: course.indicatorValue,
            valueColor: AlwaysStoppedAnimation(Colors.green)),
      ),
    );

    */


    final coursePrice = Container(
      padding: const EdgeInsets.all(7.0),
      decoration: new BoxDecoration(
          border: new Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(5.0)),
      child: new Text(
        "\$" + course.price.toString(),
        style: TextStyle(color: Colors.white),
      ),
    );

    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Icon(
          Icons.school,
          color: Colors.white,
          size: 40.0,
        ),
        Container(
          width: 90.0,
          child: new Divider(color: Colors.green),
        ),
        SizedBox(height: 5.0),
        Text(
          course.title,
          style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20.0),

      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(

            padding: EdgeInsets.only(left: 10.0,),
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: new BoxDecoration(

              image: new DecorationImage(
                image: new AssetImage("assets/s3.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.indigoAccent.withOpacity(0.9), BlendMode.dstATop)
              ),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          padding: EdgeInsets.only(top:40.0, left: 20.0),
          width: MediaQuery.of(context).size.width,

          child: Center(
            child: topContentText,
          ),
        ),
        Positioned(
          left: 8.0,
          top: 50.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        )
      ],
    );

    final bottomContentText = Text(
      course.content,
      style: TextStyle(fontSize: 18.0 ,
      ),
      textAlign: TextAlign.justify,
    );


    final bottomContent = Container(
      margin: EdgeInsets.only(top: 0.0),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 15.0, right: 10.0),
      child: Center(
        child: Column(
          children: <Widget>[bottomContentText],
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[topContent,
        Container(
            height: MediaQuery.of(context).size.height /2.3,
            child: ListView(
              children: <Widget>[
                bottomContent,
              ],
            ))
        ],
      ),
    );
  }
}