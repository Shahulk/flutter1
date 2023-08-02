import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: expantiontile(),));
  
}
class expantiontile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expantion text'),),
      body:  const ExpansionTile(title: Text('Colors'),
        subtitle: Text('Expant this tile'),
        children: [
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.black,),
            title: Text('black'),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.red,),
            title: Text('red'),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.white,),
            title: Text('white'),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.green,),
            title: Text('green'),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.tealAccent,),
            title: Text('teal'),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue,),
            title: Text('blue'),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.brown,),
            title: Text('brown'),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.orange,),
            title: Text('orange'),
          )

        ],
      ),
      
    );
    
  }
  
}