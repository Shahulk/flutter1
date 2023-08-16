  import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: carui(),
    debugShowCheckedModeBanner: false,
  ));
}

class carui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 70),
          child: CircleAvatar(
            radius: 70,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.4, color: Colors.yellow),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTOkHm3_mPQ5PPRvGtU6Si7FJg8DVDtZ47rw&usqp=CAU'))),
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "IDR",
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
                TextSpan(
                    text: "17.7jt",
                    style: TextStyle(fontSize: 20, color: Colors.black))
              ]))
            ],
          )
        ],
      ),
    );
  }
}
