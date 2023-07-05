import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/login%20page.dart';

void main(){
  runApp(MaterialApp(home:listpage(),));

}
class listpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("list page"),),
      body: ListView(
        children: [
          Card(color: Colors.pink,
          child: ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage("https://www.freepik.com/photos/ai-art"),),

            title: Text("shahul"),
            subtitle: Text("9744942592"),
            trailing: Icon(Icons.call),

          ),
          ),
          Card(color: Colors.red,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("anu"),
              subtitle: Text("9744942592"),
              trailing: Icon(Icons.call),

            ),
          ),
          Card(color: Colors.green,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("ram"),
              subtitle: Text("9744942592"),
              trailing: Icon(Icons.call),

            ),
          ),
          Card(color: Colors.brown,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("arun"),
              subtitle: Text("9744942592"),
              trailing: Icon(Icons.call),

            ),
          )

        ],
      ),
    );
  }

}