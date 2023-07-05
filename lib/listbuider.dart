import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: listbuider(),));
}
class listbuider extends StatelessWidget{
  var data=['ramu','manu','vinu','raju','dilu'];
  var colorsss=['100','200','500','1000','400'];
  var imagess=['assets/images/apple.png','assets/images/apple.png','assets/images/apple.png'];
  @override
  Widget build(BuildContext ) {
    return Scaffold(
     appBar: AppBar(title: Text("list page"),),
      body:ListView.builder(
      itemCount:imagess.length,
          itemBuilder:(context,index){
        return Card(
          child:ListTile(
            leading: Image(image: AssetImage(imagess[index]),),
            title: Text(data[index]),
            subtitle: Text(data[index]),
            trailing: Icon(Icons.call,color:Colors.cyan,



          )

          ),
        );
          }


      )

    );
  }

}
