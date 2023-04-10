import 'package:flutter/material.dart';
import 'package:masckota_v2/src/model/product.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Card(
            elevation: 0,
            color: Colors.grey[200],
            //shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              //set border radius more than 50% of height and width to make circle
            ),
            child: Container(
              height: 250,
              width: 175,
              child: Column(
                children: <Widget>[

                ],
              ),
            ),
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
