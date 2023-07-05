import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listsupprate(),
  ));
}

class listsupprate extends StatelessWidget {
  var data = ['ramu', 'manu', 'vinu', 'raju', 'dilu'];
  var colorsss = [900, 800, 500, 300, 200];
  var imagess = [
    'assets/images/apple.png',
    'assets/images/apple.png',
    'assets/images/apple.png',
    'assets/images/apple.png',
    'assets/images/apple.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list page"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            color: Colors.deepOrange[colorsss[index]],
            child: ListTile(
              leading: Image(
                image: AssetImage(imagess[index]),
              ),
              subtitle: Text("work number"),
              title: Text(data[index]),
              trailing: Icon(Icons.call),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 5,
            color: Colors.pink[colorsss[index]],
          );
        },
        itemCount: imagess.length,
      ),
    );
  }
}
