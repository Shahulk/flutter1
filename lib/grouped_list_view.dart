import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: groupedlist(),
    debugShowCheckedModeBanner: false,
  ));

}
var titles = ['Android', 'Flutter', 'IOS', 'Java', 'Phython',];

var heading = [
  'Android Tutorial',
  'Flutter Tutorial',
  'IOS Tutorial',
  'Java Tutorial',
  'Phython Tutorial'];

var cccolors = [
  Colors.deepPurple,
  Colors.lightGreen,
  Colors.pink,
  Colors.pinkAccent,
  Colors.yellowAccent
];

class groupedlist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Align(alignment: Alignment.center,child: Text('Grouped Listview'),),
),
      body: ListView.builder(
          itemBuilder: (context,index){
        return Container(
          color: Colors.blue[50],
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(titles[index],
                    style: TextStyle(fontWeight: FontWeight.bold),


                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(left: 10,right: 10),
            child: Card(
            margin: EdgeInsets.all(10),
              shadowColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)),

              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  color: cccolors[index],
                ),
                title: Text(heading[index]),
                subtitle: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_circle),
                        Text('HanTh'),

                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_month),
                        Text('24/12/20'),
                      ],
                    )

                  ],
                ),
              ),
              ),
            ),
            ],
          ),
        ) ;
    },
    itemCount: titles.length,
    )
    );
  }

}
