import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( MaterialApp(home:namedroutes(),
    routes: {
    'first': (context)=>Firstpage(),
      'second':(context)=>Secondpage(),
    }
    ,));
}
class namedroutes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('named routes'),

      ),
      body: ListView(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, 'first');
          }, child:const Text('First page') ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, 'second');
          }, child:const Text('Second page') ),

        ],
      ),
    );
  }

}
class Firstpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Myfirstscreen',style: TextStyle(fontSize: 40),),

      ),
    );

  }

}
class Secondpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Mysecondscreen',style: TextStyle(fontSize: 40),),
      ),
    );
  }

}
