import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(MaterialApp(
    home: profileui(),
    debugShowCheckedModeBanner: false,
  ));
}

class profileui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.grey[200],
            child: ListView(children: [
              Row(
                children: [
                  Expanded(
                      child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {},
                    ),
                  )),
                  Expanded(
                      child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {},
                    ),
                  ))
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
                      color: Colors.red,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://thumbs.dreamstime.com/b/hiking-mountain-tourist-walking-up-to-h"
                            "ill-adventure-nature-woman-backpack-wearing-sports-clothing-196511032.jpg"),
                      ),
                      borderRadius: BorderRadius.circular(100),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(left: 70, right: 70, top: 25),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Bootstrap.facebook),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Bootstrap.instagram),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Bootstrap.whatsapp),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Bootstrap.linkedin),
                        onPressed: () {},
                      ),
                    ],
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
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Center(
                      child: Text(
                        "Devlopper",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(40),
                child: Center(
                    child: Text(
                  'Mobile App Developer and Open Source Enthusiastic',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                )),
              ),
              Container(
                  margin: EdgeInsets.only(left: 50, right: 35),
                  // height: 100,
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: SingleChildScrollView(
                    child: Container(
                        // margin: EdgeInsets.only(left: 25, right: 25),
                        child: Column(
                      children: [
                        scrollContainer(
                          leadingIcon: Icons.privacy_tip,
                          listTitle: 'Privacy',
                        ),
                        // SizedBox(height: 10,),
                        scrollContainer(
                          leadingIcon: Icons.history,
                          listTitle: 'Purchase history',
                        ),
                        // SizedBox(height: 10,),
                        scrollContainer(
                          leadingIcon: Icons.help,
                          listTitle: 'Help and support',
                        ),
                        // SizedBox(height: 10,),
                        scrollContainer(
                          leadingIcon: Icons.settings,
                          listTitle: 'Settings',
                        ),
                        // SizedBox(height: 10,),
                        scrollContainer(
                          leadingIcon: Icons.person_add,
                          listTitle: 'Invite a friend',
                        ),
                        // SizedBox(height: 10,),
                        scrollContainer(
                          leadingIcon: EvaIcons.log_out,
                          listTitle: 'Logout',
                        ),
                        // SizedBox(height: 10,),
                      ],
                    )),
                  ))
            ])));
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
          color: Colors.grey[400], borderRadius: BorderRadius.circular(100)),
      child: ListTile(
        leading: Icon(
          leadingIcon,
          color: Colors.black,
        ),
        title: Text(
          listTitle,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}
