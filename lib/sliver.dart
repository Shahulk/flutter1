import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listcustom(),
  ));
}

class listcustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('my app'),),
      body: ListView.custom(
          childrenDelegate: SliverChildListDelegate([
        Card(
          child: ListTile(
            leading: Icon(Icons.dangerous),
            title: Text("ramu"),
            trailing: Icon(CupertinoIcons.game_controller),
          ),
        ),
            Card(
              child: ListTile(
                leading: Icon(Icons.dangerous),
                title: Text("manu"),
                trailing: Icon(CupertinoIcons.game_controller),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.dangerous),
                title: Text("vinu"),
                trailing: Icon(CupertinoIcons.game_controller),
              ),
            ),Card(
              child: ListTile(
                leading: Icon(Icons.dangerous),
                title: Text("appu"),
                trailing: Icon(CupertinoIcons.game_controller),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.dangerous),
                title: Text("joy"),
                trailing: Icon(CupertinoIcons.game_controller),
              ),
            )
      ])),
    );
  }
}
