import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/dummydata.dart';

class productlist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;
    final product = dummyproducts.firstWhere((data) => data["id"]== productId);
    return Scaffold(
      appBar: AppBar(
        title: Text("product details"),
      ),
      body: Padding(padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network(product["image"]),
            Text("${product["id"].toString()}"),
            Text("${product["name"]}"),
            Text("${product["description"]}"),
          ],
        ),
      ),

    );

  }

}