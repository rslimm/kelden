import 'package:flutter/material.dart';

Widget image1 = Container(
  height: 400,
  width: 300,
  decoration: BoxDecoration(
      image: new DecorationImage(
        image: new ExactAssetImage('assets/img10.jpg'),
        fit: BoxFit.cover,
      ),
      color: Colors.blue,
      borderRadius: BorderRadius.all(Radius.circular(8))),
);
Widget image2 = Container(
  height: 400,
  width: 300,
  decoration: BoxDecoration(
      image: new DecorationImage(
        image: new ExactAssetImage('assets/img7.jpg'),
        fit: BoxFit.cover,
      ),
      color: Colors.red,
      borderRadius: BorderRadius.all(Radius.circular(8))),
);

Widget image3 = Container(
  height: 400,
  width: 300,
  decoration: BoxDecoration(
      image: new DecorationImage(
        image: new ExactAssetImage('assets/img11.jpg'),
        fit: BoxFit.cover,
      ),
      color: Colors.green,
      borderRadius: BorderRadius.all(Radius.circular(8))),
);
Widget image4 = Container(
  height: 400,
  width: 300,
  decoration: BoxDecoration(
      image: new DecorationImage(
        image: new ExactAssetImage('assets/img12.jpg'),
        fit: BoxFit.cover,
      ),
      color: Colors.yellow,
      borderRadius: BorderRadius.all(Radius.circular(8))),
);
Widget image5 = Container(
    height: 400,
    width: 300,
    decoration: BoxDecoration(
        image: new DecorationImage(
          image: new ExactAssetImage('assets/img1.jpg'),
          fit: BoxFit.cover,
        ),
        color: Colors.orange,
        borderRadius: BorderRadius.all(Radius.circular(8))),
    child: Center(child: Text("5")
    )
);


