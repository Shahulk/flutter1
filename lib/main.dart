import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Myapp"),
      ),
      body: Container(decoration: BoxDecoration(image: DecorationImage(image:NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  " flutter",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                  ),
                  selectionColor: Colors.amberAccent,
                ),
              ),
              Icon(
                Icons.account_box_outlined,
                size: 10,
                color: Colors.red,
              ),
              Image(image :NetworkImage ("assets/images/apple.png"),height: 100,width: 50,),
                  // image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJLOaGyVk-s6W0dd_"
                  //     "C00WH6f0qqiWvHFVcAWyTLco8s10viw_agQHtQIXVDYozaq3PDfY&usqp=CAU"))
            ],
          ),
        ),
      ),
    );
  }
}
