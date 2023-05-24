import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:masckota_v2/src/components/get_pet_entity.dart';
import 'package:masckota_v2/src/components/get_pet_image.dart';
import 'dart:math';
import '../screens/detail_page.dart';
import 'package:masckota_v2/src/components/get_category_l1_entity.dart';

class Categoriesd_List extends StatelessWidget{
  final dynamic idCategory;

  Categoriesd_List({Key? key, this.idCategory});

  final category_l1 = FirebaseAuth.instance.currentUser;

  List<String> docIDs = [];

  List<Color> colors = [Colors.deepOrange, Colors.pinkAccent, Colors.indigoAccent, Colors.green, Colors.grey, Colors.red];
  Random random = new Random();
  int index = 0;

  Color randomGenerator() {
    return colors[new Random().nextInt(2)];
  }

  Future getDocId() async {
    await FirebaseFirestore.instance.collection('category_l1').where('id_category', isEqualTo: idCategory).get().then(
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
      height: 140.0,
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
                        height: 80,
                        width: 115,
                        //decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              maxRadius: 43,
                              backgroundColor: Colors.deepOrange,
                              child: Image(
                                color: Colors.white,
                                //image: Image.network(GetPetImage(documentId: docIDs[index])),

                                image: AssetImage(
                                    'lib/src/assets/images/categories/main_categories_dog.png'),
                                width: 60,
                              ),
                            ),
                            /*CircleAvatar(
                              maxRadius: 43,
                              backgroundColor: Colors.deepOrange,
                              backgroundImage: NetworkImage('https://drive.google.com/uc?export=view&id=1UuYupo32d-IloyxESU-P5Q4B4Fmx0pJP'),
                              /*child: Container(
                                //color: Colors.wh,
                                child: Image(
                                  color: Colors.white,
                                  //image: Image.network(GetPetImage(documentId: docIDs[index])),

                                  image: AssetImage(
                                      'lib/src/assets/images/categories/main_categories_dog.png'),
                                  width: 50,
                                ),
                              ),*/

                            ),*/
                            /*Container( Funciona
                              //color: Colors.deepOrange,
                              //child: ClipOval(
                                child: Material(
                                  //color: Colors.deepOrange,
                                  child: InkWell(
                                    onTap: () {},
                                    child: ClipOval(

                                      child: Image.network(
                                        'https://drive.google.com/uc?export=view&id=1UuYupo32d-IloyxESU-P5Q4B4Fmx0pJP',
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                             // )
                            ),*/

                            /*ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: SizedBox.fromSize(
                                size: const Size.fromRadius(40),
                                child: ColorFiltered(
                                  colorFilter: const ColorFilter.mode(Colors.white, BlendMode.color),
                                    child: Image.network(
                                      'https://drive.google.com/uc?export=view&id=1UuYupo32d-IloyxESU-P5Q4B4Fmx0pJP',
                                      fit: BoxFit.cover,
                                    )
                                ),
                                /*child: Image.network(
                                  'https://drive.google.com/uc?export=view&id=1UuYupo32d-IloyxESU-P5Q4B4Fmx0pJP',
                                  fit: BoxFit.cover,
                                ),*/
                              ),
                            ),*/
                            //const SizedBox(height: 3),
                            Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: ListTile(
                                title: GetCategoryL1Data(documentId: docIDs[index]),//Text(docIDs[index]),

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
}