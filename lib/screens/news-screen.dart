import 'package:flutter/material.dart';

import 'details.dart';
class NewsScreen extends StatelessWidget {
  List<String>imagePath=[
    'https://cdn.cnn.com/cnnnext/dam/assets/220225095200-ukraine-russia-conflict-022522-super-tease.jpg',
    'https://cdn.cnn.com/cnnnext/dam/assets/220225180808-kyiv-explosion-0226-super-tease.jpg',
    'https://imagez.tmz.com/image/2b/16by9/2022/02/25/2b31d8b0925b400882e2a4bf7e0c3f23_xl.jpg',
    'https://cdn.cnn.com/cnnnext/dam/assets/220225095200-ukraine-russia-conflict-022522-super-tease.jpg',
    'https://cdn.cnn.com/cnnnext/dam/assets/220225180808-kyiv-explosion-0226-super-tease.jpg',
    'https://imagez.tmz.com/image/2b/16by9/2022/02/25/2b31d8b0925b400882e2a4bf7e0c3f23_xl.jpg',
    'https://cdn.cnn.com/cnnnext/dam/assets/220225180808-kyiv-explosion-0226-super-tease.jpg',
    'https://imagez.tmz.com/image/2b/16by9/2022/02/25/2b31d8b0925b400882e2a4bf7e0c3f23_xl.jpg'
  ];
  List<String>text=[
    'Fly Your Name for Free Around the Moon on NASA',
    'Videos show explosions and gunfire around Ukrainian capital - CNN',
    'Kylie Jenner Back in Action Just 3 Weeks After Giving Birth - TMZ',
    'Fly Your Name for Free Around the Moon on NASA',
    'Videos show explosions and gunfire around Ukrainian capital - CNN',
    'Kylie Jenner Back in Action Just 3 Weeks After Giving Birth - TMZ',
    'Videos show explosions and gunfire around Ukrainian capital - CNN',
    'Kylie Jenner Back in Action Just 3 Weeks After Giving Birth - TMZ'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'News',
            style: TextStyle(
                color: Colors.black
            ),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child:ListView.separated(
              itemCount: imagePath.length,
              itemBuilder: (context,index)
              {
                return GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)
                        {
                          return DetailsScreen(imagePath[index],text[index]);
                        }
                    ));
                  },
                  child: Row(
                    children: [
                      Image(
                        image: NetworkImage(imagePath[index]),
                        height: 100,),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Text(text[index]))
                    ],
                  ),
                );

              },
              separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 10,),))
    );
  }
}
