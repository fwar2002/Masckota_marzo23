import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:masckota_v2/src/components/categories_listview.dart';
import 'package:masckota_v2/src/components/categories_vert_listview_.dart';
import 'package:masckota_v2/src/screens/register_page.dart';
import 'package:masckota_v2/src/screens/login_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:masckota_v2/src/components/horizontal_listview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../components/categories_d_listview.dart';

class DetailPage extends StatefulWidget {
  final dynamic idCategory;

  const DetailPage({Key? key, this.idCategory});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>{
  List imageList = [
    {"id": 1, "image_path": 'lib/src/assets/images/carousel_one.jpg'},
    {"id": 2, "image_path": 'lib/src/assets/images/carousel_two.jpg'},
    {"id": 3, "image_path": 'lib/src/assets/images/carousel_three.jpg'},
    {"id": 4, "image_path": 'lib/src/assets/images/carousel_four.jpg'}
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  void iniState(){
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value){
      /*Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (ctx) => Home()));*/
    });
  }

  @override
  void signout(){
    FirebaseAuth.instance.signOut();
  }

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context){
    final data = ModalRoute.of(context)!.settings;
    late String retriveString;

    if (data.arguments == null)
      retriveString = "empty";
    else
      retriveString = data.arguments as String;

    Widget imageCarousel = CarouselSlider(
      items: imageList.map((item) => Image.asset(
        item['image_path'],
        fit: BoxFit.cover,
        width: double.infinity,
      ),
      ).toList(),
      carouselController: carouselController,
      options: CarouselOptions(
          scrollPhysics: const BouncingScrollPhysics(),
          autoPlay: true,
          aspectRatio: 2,
          viewportFraction: 1,
          onPageChanged: (index, reason) {
            setState((){
              currentIndex = index;
            });
          }
      ),
    );
    return Scaffold(
      backgroundColor: Colors.grey[100],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepOrange),
        backgroundColor: Colors.transparent,
        elevation: 0,
        //title: const Text('Masckota APP'),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: Icon(Icons.search, color: Colors.deepOrange),
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.shopping_cart, color: Colors.deepOrange)
          ),
        ],
      ),

      body: ListView(
        children:  <Widget>[
          //const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 160,
                  width: 380,
                  child: Categoriesd_List(idCategory: '$retriveString',),
                ),
              ],
            ),
          ),/*,
          SizedBox(
            height: 50,
            //width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                SizedBox(
                  width: 370,
                  child: Text(
                    'Productos destacados',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),*/
          SizedBox(
            width: 50,
            child: Text('$retriveString'),
          ),
          /*SizedBox(
            width: double.infinity,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 225,
                    width: 380,
                    child: HorizontalList()
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),*/
          /*SizedBox(
            height: 20,
            //width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                SizedBox(
                  width: 370,
                  child: Text(
                    'Categorías',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          //const SizedBox(height: 3),
          SizedBox(
            width: double.infinity,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100,
                  width: 380,
                  child: CategoriesVerticalList(),
                ),
              ],
            ),
          ),*/
          //HorizontalList(),
        ],
      ),
//------------------------------------ MENU ---------------------------------//

    );
  }
}

class CustomSearchDelegate extends SearchDelegate{
  List<String> searchTerms = [
    'Perros',
    'Gatos',
    'Peces',
    'Aves',
  ];
//------------------- Estilos del APP BAR ------------------------------------//
  @override
  TextStyle? get searchFieldStyle => const TextStyle(fontSize: 18,);

  @override
  String? get searchFieldLabel => 'Buscar';

  @override
  List<Widget> buildActions(BuildContext context){
    return[
      IconButton(
        onPressed: (){
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context){
    return IconButton(
      onPressed: (){
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];

    for (var categories in searchTerms) {
      if (categories.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(categories);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context){
    List<String> matchQuery = [];

    for (var categories in searchTerms) {
      if (categories.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(categories);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}