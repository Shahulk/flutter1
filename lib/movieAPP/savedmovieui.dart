import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: savedui(),
    debugShowCheckedModeBanner: false,
  ));
}

class savedui extends StatelessWidget {
  var movietitle = [
    'Captian America : The Winter Soldier',
    'Captian Marvel',
    'Encanto 2021',
    'The Ice Age : Adventure'
        ' of Buck Wild',
    'Avatar : The way of Water'
  ];
  var movieimage = [
    'https://m.media-amazon.com/images/I/51wGo96+fpL.jpg',
    'https://i5.walmartimages.com/asr/de8ba840-16ac-4f18-b2d5-d1ca89d82cb6_1.83aeee5f79cd9aeb0c01cd33afeae9a9.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF'
        'https://whatsondisneyplus.com/wp-content/uploads/2022/01/FJZTQFtXIAgYh7h-1.jpeg',
    'https://lumiere-a.akamaihd.net/v1/images/p_encanto_homeent_22359_4892ae1c.jpeg?region=0%2C0%2C540%2C810',
    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/6759aeee-ecd6-4e00-9832-997cdc5252d9/dfiw9m0-4a27b469-2514-4bc1-b76f-bb124b5c45e6.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzY3NTlhZWVlLWVjZDYtNGUwMC05ODMyLTk5N2NkYzUyNTJkOVwvZGZpdzltMC00YTI3YjQ2OS0yNTE0LTRiYzEtYjc2Zi1iYjEyNGI1YzQ1ZTYuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZp'
        'bGUuZG93bmxvYWQiXX0.Iey4CUijsaxhTRf9ylaMVpeKYrYIpkPQga4AEJrW90I',
    'https://d32qys9a6wm9no.cloudfront.net/images/movies/poster/89/c5c1024ecc2ff962a3ba5869c9c0ec11_300x442.jpg?t=1684272618',
  ];
  var movietype = [
    'Action, Advanture',
    'Action, Advanture',
    'Action, Animation',
    'Animation,Comedy ,',
    'Animation , Adventure'
  ];
  var moviewatch = [
    'Watch Now',
    'Watch Now',
    'Watch Now',
    'Watch Now',
    'Watch Now'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF24223A),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF24223A),
        title: Center(
            child: Text(
          'Saved',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )),
        actions: [
          Padding(
              padding: const EdgeInsets.only(top: 15, right: 10),
              child: Text(
                'Delete',
                style: TextStyle(fontSize: 15),
              )),
        ],
      ),

      body: ListView.builder(
        itemBuilder: (context, intex) {
          return Container(
            height: 190,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 170,
                    width: 130,
                    padding: const EdgeInsets.only(
                        left: 30, right: 10, top: 10, bottom: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                              movieimage[intex],
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  left: 150,
                  top: 20,
                  child: Container(

                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.6,
                    padding: EdgeInsets.only(
                        left: 10, top: 10, right: 10, bottom: 10),
                    child: Stack(
                      children: [
                        Positioned(
                            child: Text(
                          movietitle[intex],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                        SizedBox(
                          width: 10,
                        ),

                        Positioned(
                          top: 98,
                          left: 50,
                          child: Container(
                            width: 120,
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red),
                            child: Center(
                              child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.red),
                                ),
                                onPressed: () {},
                                child: Text(
                                  moviewatch[intex],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(width: 10,),
                        Positioned(
                            top: 40,
                            child: Row(
                              children: [
                                Text(movietype[intex]),
                              ],
                            ))
                      ],
                    ),
                  ),

                ),

                Positioned(
                  right: 5,top: 5,
                  child: IconButton(onPressed: () {

                  }, icon: Icon(Icons.more_vert),),
                ),



              ],
            ),

          );


        },
        itemCount: moviewatch.length,
      ),

    );
  }
}
