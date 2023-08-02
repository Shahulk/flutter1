import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/listbuider.dart';
import 'package:flutter1/login%20page.dart';
import 'package:flutter1/stackeg.dart';

void main(){
  runApp(MaterialApp(home: tabbarr(),
  debugShowCheckedModeBanner: false,));


}
class tabbarr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 4,
      child: Scaffold(
appBar: AppBar(
  title: Text('My tab bar'),
  backgroundColor: Colors.green[800],
  actions: [
      Icon(Icons.camera_alt),
      SizedBox(width: 20,),
      Icon(Icons.search),
      Icon(Icons.chat_rounded),
      PopupMenuButton(itemBuilder: (context){
        return[
          PopupMenuItem(child: Text("about")),
          PopupMenuItem(child: Text("settings")),
          PopupMenuItem(child: Text("logout")),
          PopupMenuItem(child: Text("community")),

        ];
      }
      )
  ],
  bottom: TabBar(
      unselectedLabelColor: Colors.yellow,
      tabs: [
        Tab(icon: Icon(Icons.people),),
        Tab(text: "chat",),
        Tab(text: "status",),
        Tab(text: 'call',),

      ],
  ),
),
        body: TabBarView(children: [
          Center(child: Text("contact"),),
          loginpage(),
          listbuider(),
          stackeg(),

        ],),
      ),
    );
  }

}