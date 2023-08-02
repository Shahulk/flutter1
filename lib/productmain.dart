import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/dummydata.dart';
import 'package:flutter1/product2.dart';

void main(){
  runApp(MaterialApp(home: (productmain()),
routes: {"secondone": (context) => productlist(),
}
  ));
}
class productmain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text ('Product list'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: dummyproducts.map((product)  {
          return TextButton(
          onPressed:()=> gotonext(context,product["id"]),
    child: Text("${product["name"]}"));}).toList(),
    ),

    );
}
void gotonext(BuildContext context,product){
    Navigator.of(context).pushNamed("secondone",arguments: product);
  }
}
