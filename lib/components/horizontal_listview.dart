import 'package:delivery_app/main.dart';
import 'package:flutter/material.dart';
class HorizontaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
        Category(
          image_location: 'images/Cats/shakes.png',
          image_caption: 'Shakes',
        ),
          Category(
            image_location: 'images/Cats/beer.png',
            image_caption: 'Beer',
          ),
          Category(
            image_location: 'images/Cats/wine.png',
            image_caption: 'Wine',
          ),



        ],
      ),
    );
  }
}
