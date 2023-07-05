import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: loginpage(),));
}
class loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("loginpage"),),
      body: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 25,left: 55,right: 50),
            child: Text("loginpage",style: TextStyle(color: Colors.blue, fontSize: 60),),

    ) ),
    Padding(
      padding: const EdgeInsets.only(top: 25,left: 55,right: 50),
      child: TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person ),
          labelText: "Username",
          hintText: "username",
      border:OutlineInputBorder(
      borderRadius: BorderRadius.circular(150))),

      ),
    ),
    Padding(padding: const EdgeInsets.only(top: 25,left: 55,right: 50),

    child: TextField(
      obscureText: true,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.password),
        suffixIcon: Icon(Icons.visibility_off),
        labelText: "password",
        hintText: "password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(150))),
    ),
    ),
    Padding(padding: const EdgeInsets.all(60),
    child: ElevatedButton(onPressed:(){},child: Text("login"),
    )
    ),
    TextButton(onPressed: (){}, child:Text("not a user ? create a new account"))
  ],
        ),
      );



  }

}