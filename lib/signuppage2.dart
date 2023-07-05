import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/login%20page.dart';

void main() {
  runApp(MaterialApp(
    home: sighup2(),
    debugShowCheckedModeBanner: false,
  ));
}

class sighup2 extends StatefulWidget {

  @override
  State<sighup2> createState() => _sighup2State();
}

class _sighup2State extends State<sighup2> {
  final formk = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sign in page"),
        backgroundColor: Colors.red,
      ),
      body: Form(
        key: formk,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 30),
              child: Text("Signin",style: TextStyle(fontSize: 40),),
            ),
             TextFormField(
               validator: (emmmmail){
                 if(emmmmail!.isEmpty){
                   return "this field is empty";

                 }else{
                   return null;
                 }
               },
              decoration: InputDecoration(
                labelText: 'Email id',
                hintText: "email",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))

              ),
            ),
            ElevatedButton(onPressed: (){
              final formstatecheak = formk.currentState!.validate();
              if(formstatecheak ==true){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
              }else{
                return null;
              }

            }, child: Text("sahu mon"))


          ],
        ),
      ),
    );
  }
}
