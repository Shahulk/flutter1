import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: backpress(),));
}
class backpress extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(context: context, builder:(context)=> AlertDialog(
        title: const Text('Exitt!!!'),
        content: const Text('Do you want to exit??'),
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop(false);
          },
        child: const Text('NO')),
          ElevatedButton(
              onPressed:(){
                Navigator.of(context).pop(true);
              } ,
              child: const Text('Yes'))
        ],
      ));

    }
    return WillPopScope(
      onWillPop: showAlert,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Alert'),

        ),
      ),
    );
  }
}