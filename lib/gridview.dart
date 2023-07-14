import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridview(),
    debugShowCheckedModeBanner: false,
  ));
}


class gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('grid list'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
        children: [
          Card(
            color: Colors.lightGreenAccent,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/apple.png',
                      ),
                      height: 50,
                      width: 40,
                    )),
              ),
              Text("hllo")

            ]),
          ),
          Card(
            color: Colors.lightGreenAccent,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/apple.png',
                      ),
                      height: 50,
                      width: 40,
                    )),
              ),
              Text("hllo")

            ]),
          ),
          Card(
            color: Colors.lightGreenAccent,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/apple.png',
                      ),
                      height: 50,
                      width: 40,
                    )),
              ),
              Text("hllo")

            ]),
          ),
          Card(
            color: Colors.lightGreenAccent,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/apple.png',
                      ),
                      height: 50,
                      width: 40,
                    )),
              ),
              Text("hllo")

            ]),
          ),
          Card(
            color: Colors.lightGreenAccent,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/apple.png',
                      ),
                      height: 50,
                      width: 40,
                    )),
              ),
              Text("hllo")

            ]),
          ),
          Card(
            color: Colors.lightGreenAccent,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/apple.png',
                      ),
                      height: 50,
                      width: 40,
                    )),
              ),
              Text("hllo")

            ]),
          ),
          Card(
            color: Colors.lightGreenAccent,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/apple.png',
                      ),
                      height: 50,
                      width: 40,
                    )),
              ),
              Text("hllo")

            ]),
          ),
          Card(
            color: Colors.lightGreenAccent,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/apple.png',
                      ),
                      height: 50,
                      width: 40,
                    )),
              ),
              Text("hllo")

            ]),
          ),
          Card(
            color: Colors.lightGreenAccent,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/apple.png',
                      ),
                      height: 50,
                      width: 40,
                    )),
              ),
              Text("hllo")

            ]),
          ),
          Card(
            color: Colors.lightGreenAccent,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/apple.png',
                      ),
                      height: 50,
                      width: 40,
                    )),
              ),
              Text("hllo")

            ]),
          ),
          Card(
            color: Colors.lightGreenAccent,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/apple.png',
                      ),
                      height: 50,
                      width: 40,
                    )),
              ),
              Text("hllo")

            ]),
          ),
          Card(
            color: Colors.lightGreenAccent,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/apple.png',
                      ),
                      height: 50,
                      width: 40,
                    )),
              ),
              Text("hllo")

            ]),
          ),


        ],
      ),
    );
  }
}
