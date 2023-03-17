import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HorizontalList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
              image_location: 'lib/src/assets/images/categories/categories-dog.png',/*'/lib/src/images/categories/categories-dog.png'*/
              image_caption: 'Perro',
          ),
          Category(
            image_location: 'lib/src/assets/images/categories/categories-dog.png',/*'/lib/src/images/categories/categories-dog.png'*/
            image_caption: 'Perro',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget{
  final String image_location;
  final String image_caption;

  Category({
    required this.image_location,
    required this.image_caption
  });

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),
          ),
        ),
      ),
    );
    return Container();
  }
}
