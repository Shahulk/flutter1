import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/tabbarr.dart';

void main(){
  runApp(MaterialApp(home: bottamnavigation(),));

}
class bottamnavigation extends StatefulWidget{
  int selectedint=0;
  @override
  State<bottamnavigation> createState() => _bottamnavigationState();
}

class _bottamnavigationState extends State<bottamnavigation> {
  int selected=0;
  List pages=[
    Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text('home'),
        ),
      ),
    ),
    Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text('home'),
        ),
      ),
    ), tabbarr(),
    // Center(
    //   child: Card(
    //     child: Padding(
    //       padding: const EdgeInsets.all(8),
    //       child: Text('search'),
    //     ),
    //   ),
    // ),
    Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text('setting'),
        ),
      ),
    ),
    Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text('person'),
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottam"),),



      bottomNavigationBar:BottomNavigationBar(
        backgroundColor:Colors.grey ,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.yellow,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.person),label:"person" ),
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"home" ),
        BottomNavigationBarItem(icon: Icon(Icons.search),label:"search" ),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label:"setting" ),
      ],
        currentIndex: selected,
        onTap:onclicked ,
      ),
      body: pages.elementAt(selected),

    );
  }
  void onclicked(int index){
    setState(() {
      selected=index;
    });
  }
}