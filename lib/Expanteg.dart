import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Expandeg(),));
}
class Expandeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(color: Colors.tealAccent,
            padding: EdgeInsets.all(15),
            child: Text('hloo'),
          ),
          Expanded(child: Container(
            child: Text('hii'),
            color: Colors.teal,

          )),
    Expanded(child: Container(
    child: Text('hii'),
    color: Colors.green,)),
    Expanded(child: Container(
    child: Text('hii'),
    color: Colors.brown,)),



    ],
      ),
    );

  }

}