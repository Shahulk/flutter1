import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridviewextend(),
  ));
}

class gridviewextend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('extent'),
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 80,
          children: List.generate(
            20,
            (index) {
              return Card(
                child: Text('hiiii'),
              );
            },
          ),
        ));
  }
}
 