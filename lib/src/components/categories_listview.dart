import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CategoriesList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 125.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:  <Widget>[
          SizedBox(
            height: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Card(
                      elevation: 0,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      //color: Colors.deepOrangeAccent[100],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 102,
                          width: 95,
                          //decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                          child: Column(
                            children: const <Widget>[
                              CircleAvatar(
                                maxRadius: 40,
                                backgroundColor: Colors.deepOrange,
                                child: Image(
                                  color: Colors.white,
                                  image: AssetImage('lib/src/assets/images/categories/main_categories_dog.png'),
                                  width: 47,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                'Perros',
                                
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),                          //const SizedBox(height: 2),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 102,
                          width: 95,
                          //decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                          child: Column(
                            children: const <Widget>[
                              CircleAvatar(
                                maxRadius: 40,
                                backgroundColor: Colors.pinkAccent,
                                child: Image(
                                  color: Colors.white,
                                  image: AssetImage('lib/src/assets/images/categories/main_categories_cat.png'),
                                  width: 47,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                'Gatos',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),                          //const SizedBox(height: 2),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 102,
                          width: 95,
                          //decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                          child: Column(
                            children: const <Widget>[
                              CircleAvatar(
                                maxRadius: 40,
                                backgroundColor: Colors.indigoAccent,
                                child: Image(
                                  color: Colors.white,
                                  image: AssetImage('lib/src/assets/images/categories/main_categories_hamster.png'),
                                  width: 47,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                'Hamsters',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),                          //const SizedBox(height: 2),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 102,
                          width: 95,
                          //decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                          child: Column(
                            children: const <Widget>[
                              CircleAvatar(
                                maxRadius: 40,
                                backgroundColor: Colors.red,
                                child: Image(
                                  color: Colors.white,
                                  image: AssetImage('lib/src/assets/images/categories/main_categories_bird.png'),
                                  width: 47,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                'Pájaros',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),                          //const SizedBox(height: 2),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 102,
                          width: 95,
                          //decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                          child: Column(
                            children: const <Widget>[
                              CircleAvatar(
                                maxRadius: 40,
                                backgroundColor: Colors.teal,
                                child: Image(
                                  color: Colors.white,
                                  image: AssetImage('lib/src/assets/images/categories/main_categories_fish.png'),
                                  width: 47,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                'Peces',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),                          //const SizedBox(height: 2),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 102,
                          width: 95,
                          //decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                          child: Column(
                            children: const <Widget>[
                              CircleAvatar(
                                maxRadius: 40,
                                backgroundColor: Colors.purple,
                                child: Image(
                                  color: Colors.white,
                                  image: AssetImage('lib/src/assets/images/categories/main_categories_rabbit.png'),
                                  width: 47,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                'Conejos',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),                          //const SizedBox(height: 2),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}