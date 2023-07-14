import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main(){
  runApp(MaterialApp(home:staggedgrid() ,));
}
class staggedgrid extends StatelessWidget{
  var image =['https://img.freepik.com/'
      'free-photo/abstract-eye-portrait-young-women-elegance-generated-by-ai_188544-9712.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(crossAxisCount: 4,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        staggeredTiles: [
          StaggeredTile.count(4, 2),
          StaggeredTile.count(3, 2),
          StaggeredTile.count(2, 1),
          StaggeredTile.count(1, 1),
          StaggeredTile.count(2, 4),
          StaggeredTile.count(2, 2),


        ],
        children: [
          customchild(iconmode:Icons.accessible_forward_rounded,bgcolor:Colors.blue),
          customchild(iconmode:Icons.accessibility_new_outlined,bgcolor:Colors.pink),
          customchild(iconmode:Icons.directions_run_outlined,bgcolor:Colors.green),
          customchild(iconmode:Icons.local_police_rounded,bgcolor:Colors.amberAccent),
          customchild(iconmode:Icons.add_alert_sharp,bgcolor:Colors.tealAccent),
          customchild(iconmode:Icons.access_time_filled_sharp,bgcolor:Colors.white),



        ],
      ),
    );
  }

}
class customchild extends StatelessWidget{
  final Color? bgcolor;
  final IconData? iconmode;
  customchild({this.bgcolor,required this.iconmode});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Icon(
        iconmode,
        color: Colors.brown,
        size: 100,
      ),
    );
  }

}