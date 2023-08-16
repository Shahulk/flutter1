

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:tweet_ui/on_tap_image.dart';

void main() {
  runApp(MaterialApp(
    home: profilemovie(),
    debugShowCheckedModeBanner: false,
  ));
}

class profilemovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xFF24223A),
            child: ListView(
              children: [
              Center(
                  child: Text(
                'Me',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              )),
              Row(
                children: [
                  Expanded(
                      child: Align(
                    alignment: Alignment.topLeft,
                    // child: IconButton(
                    //   icon: const Icon(Icons.arrow_back_ios),
                    //   onPressed: () {},
                    // ),
                  )),
                  // Expanded(
                  //     child: Align(
                  //       alignment: Alignment.topRight,
                  //       child: IconButton(
                  //         icon: const Icon(Icons.menu),
                  //         onPressed: () {},
                  //       ),
                  //     ))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                    // padding: EdgeInsets.all(100),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/me2.jpeg"),
                      ),
                      borderRadius: BorderRadius.circular(100),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(left: 70, right: 70, top: 25),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // children: [
                    //   IconButton(
                    //     icon: Icon(Bootstrap.facebook),
                    //     onPressed: () {},
                    //   ),
                    //   IconButton(
                    //     icon: Icon(Bootstrap.instagram),
                    //     onPressed: () {},
                    //   ),
                    //   IconButton(
                    //     icon: Icon(Bootstrap.whatsapp),
                    //     onPressed: () {},
                    //   ),
                    //   IconButton(
                    //     icon: Icon(Bootstrap.linkedin),
                    //     onPressed: () {},
                    //   ),
                    // ],
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: ListTile(
                    title: Center(
                      child: Text(
                        "Shahul",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    subtitle: Center(
                      child: Text(
                        "@shahul.9744",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              // Container(
              //   margin: EdgeInsets.all(15),
              //   padding: EdgeInsets.all(40),
              //   child: Center(
              //       child: Text(
              //         'Mobile App Developer and Open Source Enthusiastic',
              //         style: TextStyle(fontSize: 20),
              //         textAlign: TextAlign.center,
              //       )),
              // ),
              Column(
                children: [
                  Container(

                    padding: EdgeInsets.all(20),
                      // margin: EdgeInsets.only(left: 25, right: 25),
                      child: Column(
                    children: [
                      scrollContainer(
                        leadingIcon: Icons.person_2_outlined,
                        listTitle: 'My profile',

                      ),
                      // SizedBox(height: 10,),
                      scrollContainer(
                        leadingIcon: Icons.notifications_none_outlined,
                        listTitle: 'notification',
                      ),
                      // SizedBox(height: 10,),
                      scrollContainer(
                        leadingIcon: Icons.history,
                        listTitle: 'history',
                      ),
                      // SizedBox(height: 10,),
                      scrollContainer(
                        leadingIcon: Icons.subscriptions_outlined,
                        listTitle: 'My subscription',
                      ),
                      // SizedBox(height: 10,),
                      scrollContainer(
                        leadingIcon: Icons.settings,
                        listTitle: 'settings',
                      ),
                      // SizedBox(height: 10,),
                      scrollContainer(
                        leadingIcon: Icons.help_outline_outlined,
                        listTitle: 'help',
                      ),
                        scrollContainer(
                          leadingIcon: Icons.logout,
                          listTitle: 'logout',
                      ),

                      // SizedBox(height: 10,),
                    ],
                  )),
                ],
              ),

            ],

            ),
        ),
    );
  }
}

class scrollContainer extends StatelessWidget {
  final IconData? leadingIcon;
  final String listTitle;

  scrollContainer(
      {Key? key, required this.leadingIcon, required this.listTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: Colors.grey[1000], borderRadius: BorderRadius.circular(5)),
      child: ListTile(
        onTap: (){} ,
        leading: CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 23,
          child:  Icon(
            leadingIcon,
            color: Colors.white,
          ),
        ),
        title: Text(
          listTitle,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300,color: Colors.white),
        ),
        // trailing: Icon(
        //   Icons.arrow_forward_ios,
        //   color: Colors.black,
        // ),
      ),
    );
  }
}
