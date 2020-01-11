import 'package:delivery_app/main.dart';
import 'package:flutter/material.dart';
class HorizontaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
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
          Category(
            image_location: 'images/Cats/cocktail.png',
            image_caption: 'Cocktails',
          ),
          Category(
            image_location: 'images/Cats/energy.png',
            image_caption: 'Energy',
          ),
          Category(
            image_location: 'images/Cats/soft.png',
            image_caption: 'Soda',
          ),
          Category(
            image_location: 'images/Cats/coffee.png',
            image_caption: 'Coffee',
          ),
          Category(
            image_location: 'images/Cats/vodka.png',
            image_caption: 'Vodka',
          ),



        ],
      ),
    );
  }
}
