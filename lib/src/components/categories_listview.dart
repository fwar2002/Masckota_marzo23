import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:masckota_v2/src/components/get_pet_entity.dart';
import 'package:masckota_v2/src/components/get_pet_image.dart';
import 'dart:math';
import '../screens/detail_page.dart';

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
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPage(),
                                settings: const RouteSettings(
                                  arguments: '1',
                                )),
                          );
                        },
                        
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
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPage(),
                                settings: const RouteSettings(
                                  arguments: '2',
                                )),
                          );
                        },
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
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPage(),
                                settings: const RouteSettings(
                                  arguments: '3',
                                )),
                          );
                        },
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
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPage(),
                                settings: const RouteSettings(
                                  arguments: '4',
                                )),
                          );
                        },
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
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPage(),
                                settings: const RouteSettings(
                                  arguments: '5',
                                )),
                          );
                        },
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
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPage(),
                                settings: const RouteSettings(
                                  arguments: '6',
                                )),
                          );
                        },
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
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPage(),
                                settings: const RouteSettings(
                                  arguments: '7',
                                )),
                          );
                        },
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
                                  backgroundColor: Colors.pink,
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('lib/src/assets/images/categories/main_categories_clinic.png'),
                                    width: 47,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'Clínicas',
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
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPage(),
                                settings: const RouteSettings(
                                  arguments: '8',
                                )),
                          );
                        },
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
                                  backgroundColor: Colors.amber,
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('lib/src/assets/images/categories/main_categories_dog.png'),
                                    width: 47,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'Peluquerías',
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
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPage(),
                                settings: const RouteSettings(
                                  arguments: '9',
                                )),
                          );
                        },
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
                                  backgroundColor: Colors.indigo,
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('lib/src/assets/images/categories/main_categories_shop.png'),
                                    width: 47,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'Tiendas',
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
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPage(),
                                settings: const RouteSettings(
                                  arguments: '10',
                                )),
                          );
                        },
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
                                    image: AssetImage('lib/src/assets/images/categories/main_categories_lab.png'),
                                    width: 47,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'Laboratorios',
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
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPage(),
                                settings: const RouteSettings(
                                  arguments: '11',
                                )),
                          );
                        },
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
                                  backgroundColor: Colors.greenAccent,
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('lib/src/assets/images/categories/main_categories_hotel.png'),
                                    width: 47,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'Hotel canino',
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
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPage(),
                                settings: const RouteSettings(
                                  arguments: '12',
                                )),
                          );
                        },
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
                                  backgroundColor: Colors.purpleAccent,
                                  child: Image(
                                    color: Colors.white,
                                    image: AssetImage('lib/src/assets/images/categories/main_categories_form.png'),
                                    width: 47,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'Jornadas',
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
//Este bloque funciona correctamente con la BD
/*class CategoriesList extends StatelessWidget {
  final pet = FirebaseAuth.instance.currentUser;

  List<String> docIDs = [];

  List<Color> colors = [Colors.deepOrange, Colors.pinkAccent, Colors.indigoAccent, Colors.green, Colors.grey, Colors.red];
  Random random = new Random();
  int index = 0;

  Color randomGenerator() {
    return colors[new Random().nextInt(2)];
  }

  Future getDocId() async {
    await FirebaseFirestore.instance.collection('pet').get().then(
          (snapshot) =>
          snapshot.docs.forEach((document) {
            print(document.reference);
            docIDs.add(document.reference.id);
          }),
    );
  }

  @override
  void iniState() {
    getDocId();
  }

  @override
  Widget build(BuildContext context) {
    Color randomGenerator() {
      return colors[new Random().nextInt(2)];
    }
    return Container(
      height: 100.0,
      child: FutureBuilder(
        future: getDocId(),
        builder: (context, snapshot) {
          return ListView.builder(
              itemCount: docIDs.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
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
                        height: 100,
                        width: 95,
                        //decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                        child: Column(
                          children: <Widget>[
                            const CircleAvatar(
                              maxRadius: 40,
                              backgroundColor: Colors.deepOrange,
                              child: Image(
                                color: Colors.white,
                                //image: Image.network(GetPetImage(documentId: docIDs[index])),

                                image: AssetImage(
                                    'lib/src/assets/images/categories/main_categories_dog.png'),
                                width: 47,
                              ),
                            ),
                            //const SizedBox(height: 3),
                            Container(
                              height: 15,
                              alignment: Alignment.center,
                              child: ListTile(
                                title: GetPetData(documentId: docIDs[index]),//Text(docIDs[index]),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }
          );
        },
      ),
    );
  }
}*/
