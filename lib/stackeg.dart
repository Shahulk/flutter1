import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: stackeg(),));

}
class stackeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 500,
            width: 500,
            color: Colors.black,
          ),
          Container(
            height: 250,
            width: 250,
            color: Colors.white,
          ),
          Positioned(
            bottom: 150,
              right: 150,
              child:Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ) ),
          Positioned(
              bottom: 300,
              right: 250,
              left: 200,
              child:Container(
                height: 150,
                width: 150,
                color: Colors.green,
              ) )


        ],
      ),

    );
  }

}