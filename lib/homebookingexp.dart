import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: roombooking(),
    debugShowCheckedModeBanner: false,

  ));


}
final List rooms = [
  {
    "image": "https://hips.hearstapps.com/hmg-prod/images/sitting-rooms-hilliard-locust-18-11-20-1578948"
        "041.jpg?crop=1xw:0.8653846153846154xh;center,top&resize=1200:*",
    "title": "Awesome room near Kakkanad"
  },
  {
    "image": "https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?ixlib=rb-4.0.3&ixid=M3wx"
        "MjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww&w=1000&q=80",
    "title": "Peaceful Room"
  },
  {
    "image": "https://images.pexels.com/photos/237371/pexels-photo-237371.jpeg?cs=srgb&dl=pexels-pixabay-237371.jpg&fm=jpg",
    "title": "Beautiful Room"
  },
  {
    "image": "https://lh3.googleusercontent.com/yjDoBdvT5hee7GpGXk5fSi43sU0E_4_f2Yeo"
        "pUW99NJODjcMWAHbDWhkLO6KvjwTXvjQwlyRR0gQx2w2CnGfyohY8ETkGVzVwo-O5ti6uk8gaHecDEMA4w4yyiCAHepf29ZGXE8M",
    "title": "Vintage room near Kochi"
  },
];

class roombooking extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 180.0,
            backgroundColor: Colors.cyan,
            leading: IconButton(
              icon: const Icon(Icons.menu,color: Colors.white,),
              onPressed:(){} ,
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.favorite,color: Colors.white,),
                  onPressed: (){},
              ),
            ],
            floating: true,
            flexibleSpace: ListView(
              children: [
                const SizedBox(height: 70.0,),
                const Text("Type your location",textAlign: TextAlign.center,style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0

                ),),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: ('kakkanad, kochi'),
                      border: InputBorder.none,
                      icon: IconButton(onPressed: (){},icon: const Icon(Icons.search),),

                    ),
                  ),

                )
              ],
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 10.0,),),
SliverToBoxAdapter(
  child: _buildCategories(),
),
      SliverList(
          delegate: SliverChildBuilderDelegate(
    (BuildContext context,int index){
      return _buildRooms(context,index);
    },
            childCount: 10
          ))




        ],

      ),
    );

  }

  Widget _buildRooms(BuildContext context, int index) {
    var room = rooms[index % rooms.length];
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.greenAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.network(room['image']),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Icon(Icons.star, color: Colors.grey.shade800,size: 20.0,),
                    ),
                    const Positioned(
                      right: 8,
                      top: 8,
                      child: Icon(Icons.star_border, color: Colors.white,size: 24.0,),
                    ),
                    Positioned(
                      bottom: 20.0,
                      right: 10.0,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: const Text("\$40"),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(room['title'], style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                      ),),
                      const SizedBox(height: 5.0,),
                      const Text("Kakkanad,Kochi"),
                      const SizedBox(height: 10.0,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.star, color: Colors.green,),
                          Icon(Icons.star, color: Colors.green,),
                          Icon(Icons.star, color: Colors.green,),
                          Icon(Icons.star, color: Colors.green,),
                          Icon(Icons.star, color: Colors.green,),
                          SizedBox(width: 5.0,),
                          Text("(220 reviews)", style: TextStyle(color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }


  Widget _buildCategories(){
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 15.0,),
          Category(backgroundColor: Colors.pink,
              icon: Icons.hotel, title: "Hotel",),
          SizedBox(width: 15.0,),
          Category(backgroundColor: Colors.blue,
              icon:Icons.restaurant , title: "Restaurant",
          ),
          SizedBox(width: 15.0,),
          Category(icon:Icons.local_cafe,
              backgroundColor:Colors.orange,title: "cafe"),
        ],
      ),
    );
  }

}
class Category extends StatelessWidget{
  final IconData icon;
  final String title;
  final Color? backgroundColor;

  const Category({
    Key? key,
    required this.icon,
    required this.title,
    this.backgroundColor
}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(5.0))
        ),
      margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: const EdgeInsets.all(10.0),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: Colors.white,),
            const SizedBox(height: 5.0,),
            Text(title,style: const TextStyle(
              color: Colors.white
            ),)
          ],
        ),
      ),

    );
  }

}