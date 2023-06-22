import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:Myapp(),));
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Myapp"),
      ),
      body:Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.only(left: 150,right: 200,bottom: 300),
            child: Container(child: Text("my app is flutter",selectionColor: Colors.amberAccent, ),),
          )),
        ],
      ),
    );
  }

}