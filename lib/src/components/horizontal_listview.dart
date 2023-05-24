import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HorizontalList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 260.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Card(
            elevation: 1,
            shadowColor: Colors.black,
            //color: Colors.deepOrangeAccent[100],
            child: Container(
              height: 250,
              width: 175,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 140,
                    width: 150,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/src/assets/images/categories/dog_chow.png'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 16,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.deepOrangeAccent,
                    ),
                    onRatingUpdate: (index){},
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Alimento para perros',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    '\$ 10.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 1,
            shadowColor: Colors.black,
            //color: Colors.deepOrangeAccent[100],
            child: Container(
              height: 250,
              width: 175,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 140,
                    width: 150,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/src/assets/images/categories/gatsy.png'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 16,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.deepOrangeAccent,
                    ),
                    onRatingUpdate: (index){},
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Alimento para gatos',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    '\$ 12.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 1,
            shadowColor: Colors.black,
            //color: Colors.deepOrangeAccent[100],
            child: Container(
              height: 250,
              width: 175,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 140,
                    width: 150,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/src/assets/images/categories/dogourmet.png'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 16,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.deepOrangeAccent,
                    ),
                    onRatingUpdate: (index){},
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Alimento para perros',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    '\$ 15.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 1,
            shadowColor: Colors.black,
            //color: Colors.deepOrangeAccent[100],
            child: Container(
              height: 250,
              width: 175,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 140,
                    width: 150,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/src/assets/images/categories/dog_chow.png'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 16,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.deepOrangeAccent,
                    ),
                    onRatingUpdate: (index){},
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Alimento para perros',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    '\$ 15.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.deepOrange,
                    ),
                  ),
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