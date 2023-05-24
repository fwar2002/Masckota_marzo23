import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class CategoriesVerticalList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 70.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:  <Widget>[
          SizedBox(
            height: 70,
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
                          height: 50,
                          width: 185,
                          //decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                          child: Row(
                            children: const <Widget>[
                              CircleAvatar(
                                maxRadius: 25,
                                backgroundColor: Colors.red,
                                child: Image(
                                  color: Colors.white,
                                  image: AssetImage('lib/src/assets/images/categories/main_categories_clinic.png'),
                                  width: 35,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Clínicas Veterinarias',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
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
                      //color: Colors.deepOrangeAccent[100],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50,
                          width: 185,
                          //decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                          child: Row(
                            children: const <Widget>[
                              CircleAvatar(
                                maxRadius: 25,
                                backgroundColor: Colors.blue,
                                child: Image(
                                  color: Colors.white,
                                  image: AssetImage('lib/src/assets/images/categories/main_categories_dog.png'),
                                  width: 35,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Peluquerías caninas',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
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
                      //color: Colors.deepOrangeAccent[100],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50,
                          width: 185,
                          //decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                          child: Row(
                            children: const <Widget>[
                              CircleAvatar(
                                maxRadius: 25,
                                backgroundColor: Colors.purple,
                                child: Image(
                                  color: Colors.white,
                                  image: AssetImage('lib/src/assets/images/categories/main_categories_shop.png'),
                                  width: 35,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Tiendas',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
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
                      //color: Colors.deepOrangeAccent[100],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50,
                          width: 185,
                          //decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                          child: Row(
                            children: const <Widget>[
                              CircleAvatar(
                                maxRadius: 25,
                                backgroundColor: Colors.blueGrey,
                                child: Image(
                                  color: Colors.white,
                                  image: AssetImage('lib/src/assets/images/categories/main_categories_lab.png'),
                                  width: 35,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Laboratorios',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
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
                      //color: Colors.deepOrangeAccent[100],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50,
                          width: 185,
                          //decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                          child: Row(
                            children: const <Widget>[
                              CircleAvatar(
                                maxRadius: 25,
                                backgroundColor: Colors.teal,
                                child: Image(
                                  color: Colors.white,
                                  image: AssetImage('lib/src/assets/images/categories/main_categories_hotel.png'),
                                  width: 35,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Hotel canino',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
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
                      //color: Colors.deepOrangeAccent[100],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50,
                          width: 185,
                          //decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                          child: Row(
                            children: const <Widget>[
                              CircleAvatar(
                                maxRadius: 25,
                                backgroundColor: Colors.redAccent,
                                child: Image(
                                  color: Colors.white,
                                  image: AssetImage('lib/src/assets/images/categories/main_categories_form.png'),
                                  width: 35,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Jornadas',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
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