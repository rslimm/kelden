import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kebhips/Examples/example1.dart';
import 'package:kebhips/Examples/example2.dart';
import 'package:kebhips/Examples/example3.dart';


/*

void main() => runApp(
  new MaterialApp(
    title: 'Flutter Demo',
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: new MyApp(),
  ),
);


*/

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPage createState() => _GalleryPage();
}

class _GalleryPage extends State<GalleryPage> {
  int _selectedIndex = 0;
  final _widgetOptions = [
    Example1(),
    Example2(),
    Example3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(216, 245, 255, 1),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(title: new Text('Campus'),icon: Icon(Icons.looks_one)),
          BottomNavigationBarItem(title: new Text('Staff'),icon: Icon(Icons.looks_two,)),
          BottomNavigationBarItem(title: new Text('Evènements'),icon: Icon(Icons.looks_3)),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}