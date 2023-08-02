import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/grouped_list_view.dart';

void main() {
  runApp(
    MaterialApp(
      home: carouselslide(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class carouselslide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:Colors.white ,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.house),label:"Home" ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label:"Cart" ),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:"Account" ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              expandedHeight: 135.0,
              backgroundColor: Colors.green,
              title: Text(
                "FARMER FRESH ZONE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              actions: [
                IconButton(
                    icon:  Icon(Icons.location_on_outlined),
                    onPressed: () {}),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 10),
                  child: Text(
                    "kochi",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
              floating: false,
              flexibleSpace: ListView(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(1)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: ('Search for vegetables and fruits'),
                        border: InputBorder.none,
                        icon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                  )

                ],
              )),
          SliverList(delegate:SliverChildListDelegate([
            Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.green)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('VEGETABLES',style: TextStyle(color: Colors.green),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.green)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('FRUITS',style: TextStyle(color: Colors.green),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.green)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('EXOTIC CUTS',style: TextStyle(color: Colors.green),),
                    ),
                  )
                ],
              ),
            ),
            CarouselSlider(items:[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://www.utphysicians.com/wp-content/uploads/2022/02/fruits-and-vegetables-rainbow.jpg')

                  )
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://www.cdc.gov/foodsafety/images/comms/features/GettyImages-1247930626-500px.jpg?_=00453')

                    )
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://healthiersteps.com/wp-content/uploads/2022/02/rainbow-vegetables.jpeg')

                    )
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://i.mscwlns.co/mosaic-wellness/image/upload/f_auto,w_1'
                            '000,c_limit/v1643033370/BW%20BLOG/Untitled-design-2022-01-24T193825.271--1-.jpg')

                    )
                ),
              ),
            ],
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 2,
                autoPlay: true,
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icontitle(
                    icon:(Icons.alarm),
                    titless: ('30 min policy')
                  ),
                  Icontitle(
                      icon: Icons.camera_front_outlined,
                      titless: ('Traceability')
                  ),
                  Icontitle(
                      icon:(Icons.home_work_rounded),
                      titless: ('Traceability')
                  )
                ],
              ),
            )
          ]) ),
          SliverList(delegate: SliverChildListDelegate([
            const SizedBox(
              height: 10,
            ),
            const Padding(padding: EdgeInsets.all(8),
              child: Text('Shop by category',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

            ),
            veggrid()

          ]))
        ],
      ),
    );
  }
}
class Icontitle extends StatelessWidget{
  final IconData icon;
  final String titless;
  const Icontitle({super.key,required this.icon,required this.titless});


  @override
  Widget build(BuildContext context) {
   return Container(
     child: Column(
       children: [
         Icon(icon),
         Text(titless),

       ],
     ),
   ) ;

  }}
class veggrid extends StatelessWidget{
  var imagesu = ['https://media.istockphoto.com/id/1048954912/photo/assorted-vegetables.jpg?s=612x612&w=0&k=20&c=Uf'
      'uAfwqscF6YXc0ofz-dlcbRzCjoQquMiV28naqWuqY=',
  'https://media.istockphoto.com/'
      'id/683044558/photo/fresh-fruits-and-vegetables.jpg?s=612x612&w=0&k=20&c=WN2hEs4pFlehzigOkU6MJxLdqyYrKlTglIxbeiiP5Ao=',
 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu7AMeaDPLVyuQ-_Vsejxe3yLVadGi_7w_-FEarDOAo-icSKcVbVBw5BGS0MapGkRbNUs&usqp=CAU' ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap:true ,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder:( context,index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(aspectRatio: 4 / 3,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    height: MediaQuery
                        .of(context)
                        .size
                        .width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.grey,spreadRadius: 10, blurRadius: 10)
                      ],
                      image: DecorationImage(
                          image: NetworkImage(imagesu[index]), fit: BoxFit.cover
                      ),
                    ),
                  )
              )
            ],
          );
        },itemCount: imagesu.length,
    );

    }
}