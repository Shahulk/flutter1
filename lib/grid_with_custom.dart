import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridwithcustom(),
  ));
}

class gridwithcustom extends StatelessWidget {
  var image = [
    'https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg',
    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bWFufGVufDB8fDB8fHww&w=1000&q=80',
    'https://media.istockphoto.com/id/1210632593/photo/enjoy-with-me.jpg?s=612x612&w=0&k=20&c=jYPdbSJ2mIX7i_QAYZz5ww6Up-BDuJKuUoQ8rej4R8U=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, mainAxisSpacing: 20, crossAxisSpacing: 20),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              return Card(
                child: Image(
                  image: NetworkImage(image[index]),
                ),
              );

            },childCount: image.length
          )),
    );
  }
}

