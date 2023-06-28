import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/HOME.dart';
import 'package:flutter1/main.dart';

void main(){
  runApp(MaterialApp(home:SplashScreen(),));

}
class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState ()=> Myappstate();

  }
  class Myappstate extends State {
    @override
    void initState() {
      Timer(Duration(seconds:2), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => home()  ));
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(child: Center(
          child: Text("huuui"),
        ),),
      );
    }
  }


