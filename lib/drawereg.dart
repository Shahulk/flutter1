import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: drowyereg(),
  ));
}

class drowyereg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('drawer'),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.teal),
        child: Drawer(
         child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("shahul"),
                accountEmail: Text("shahul@12345,"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://logos-download.com/wp-content'
                          '/uploads/2016/02/BMW_logo_big_transparent_png.png'),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/complete-bmw-buying-guide-lead-1664897488.jpg',
                      ),
                      fit: BoxFit.fill),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?ixlib=rb-4'
                            '.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bG9nb3xlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://seeklogo.com/images/M/Mercedes-Benz-logo-E47583B444-seeklogo.com.png'),
                  ),
                ],
              ),
              ListTile(
                trailing: Icon(Icons.home),
                title: Text("HOME"),
                leading: Icon(Icons.safety_check),
              ),
              ListTile(
                trailing: Icon(Icons.settings_rounded),
                title: Text("settings"),
                leading: Icon(Icons.safety_check),
              ),
              ListTile(
                trailing: Icon(Icons.account_box_outlined),
                title: Text("account"),
                leading: Icon(Icons.safety_check),
              ),
              ListTile(
                trailing: Icon(Icons.logout),
                title: Text("logout"),
                leading: Icon(Icons.safety_check),
              )
            ],
          ),
        ),
      ),
    );
  }
}
