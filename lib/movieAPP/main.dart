import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/movieAPP/profilemovie.dart';
import 'package:flutter1/movieAPP/savedmovieui.dart';

import 'movieappui.dart';

void main() {
  runApp(MaterialApp(
    home: mainmovie(),
    debugShowCheckedModeBanner: false,
  ));
}

class mainmovie extends StatefulWidget {
  @override
  State<mainmovie> createState() => _mainmovieState();
}

class _mainmovieState extends State<mainmovie> {
  int bottamindex = 0;

  void onitemclik(int manu) {
    setState(() {
      bottamindex = manu;
    });
  }

  List pages = [
    Center(child: Text('Program on processing')),
    movieApp(),
    savedui(),
    Center(child: Text('Program on processing')),
    profilemovie(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(bottamindex),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: bottamindex,
        type: BottomNavigationBarType.fixed,
        onTap: onitemclik,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.save), label: 'saved'),
          BottomNavigationBarItem(
              icon: Icon(Icons.download), label: 'Download'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Me'),

        ],
      ),
    );
  }
}
