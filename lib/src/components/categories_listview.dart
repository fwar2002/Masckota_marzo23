import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CategoriesList extends StatelessWidget{
  final pet = FirebaseAuth.instance.currentUser!;

  List<String> docIDs = [];

  Future getDocId() async{
    FirebaseFirestore.instance.collection('pet').get().then(
      (snapshot) => snapshot.docs.forEach((element) {
        print(element.reference);
        docIDs.add(element.reference.id);
      })
    );
  }

  /*oid initState(){
    getDocId();
  }*/

  @override
  Widget build(BuildContext context){
    return Container(
      height: 125.0,
      /*child: FutureBuilder(
        future: getDocId(),
        builder: (context, snapshot){
          return ListView.builder(
            itemCount: docIDs.length,
            itemBuilder: (context, index){
              return Container(
                child: Card(
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
              );
            }
          );
        },
      ),*/

      /*child: FutureBuilder(
        future: getDocId(),
        builder: (context, snapshot){
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: docIDs.length,
            itemBuilder: (context, index){
              return Card(
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
                  child: SizedBox(
                    height: 102,
                    width: 95,
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
              );
            },
          );
        },
      ),*/
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