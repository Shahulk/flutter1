import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: movieApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class movieApp extends StatelessWidget {
  List image = [
    'assets/images/movie1.jpeg',
    'assets/images/movie4.jpeg',
    'assets/images/movie5.jpg',
    'assets/images/movie8.jpg',
    'assets/images/movie9.jpg'

  ];
  List img=['assets/images/movie18.webp',
'assets/images/film1.jpg',
    'assets/images/film2.jpg',
    'assets/images/movie6.webp',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF24223A),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Color(0xFF24223A),
        title: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.grey),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search by title,general,actor",
              prefixIcon: Icon(Icons.search,),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      // bottomNavigationBar:BottomNavigationBar(
      //   backgroundColor:Colors.grey ,
      //   type: BottomNavigationBarType.fixed,
      //   selectedItemColor: Colors.white,
      //   //unselectedItemColor: Colors.yellow,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label:"home" ),
      //     BottomNavigationBarItem(icon: Icon(Icons.search),label:"search" ),
      //     BottomNavigationBarItem(icon: Icon(Icons.save_alt_outlined),label:"saved" ),
      //     BottomNavigationBarItem(icon: Icon(Icons.download_for_offline_rounded),label:"download" ),
      //     BottomNavigationBarItem(icon: Icon(Icons.person),label:"Me" ),
      //   ],
      // ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              // height: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10, bottom: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Recent searches',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.grey)),
                          onPressed: () {},
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.access_time,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                'Marvel',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.grey)),
                          onPressed: () {},
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.access_time,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                'captain america',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.grey)),
                          onPressed: () {},
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.access_time,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                'Captain Marvel',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.grey)),
                          onPressed: () {},
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.access_time,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                'Thor',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,top: 15),
                child: Text(
                  "Popular",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: image.map((Movie) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(Movie), fit: BoxFit.cover)),
                  );
                }).toList()
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,top: 15),
                child: Text(
                  "Recommentation for you",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: img.map((Movie) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 140,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(Movie), fit: BoxFit.cover)),
                  );
                }).toList()
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}