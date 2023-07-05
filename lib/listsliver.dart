import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: listsliver(),));

}
class listsliver extends StatelessWidget{
  @override
  var name= ['ram','anu','manu','vinu'];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('my app') ,),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,index){
        return Card(
          child: Text(name[index]),
        );
    }, childCount: name.length),
    )
    );
  }

}