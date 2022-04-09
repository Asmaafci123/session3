import 'package:flutter/material.dart';
class DetailsScreen extends StatelessWidget {
  final String image;
  final String text;
  DetailsScreen(this.image,this.text);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                  image: NetworkImage(image),
                  height: 400,
                  fit:BoxFit.cover
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '2022-04-06',
                      style: TextStyle(
                          fontSize: 14
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Fly Your Name for Free Around the Moon on NASA Fly Your Name for Free Around the Moon on NASA Fly Your Name for Free Around the Moon on NASA',
                      style: TextStyle(
                          fontSize: 14
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}