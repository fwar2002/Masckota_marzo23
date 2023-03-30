import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:masckota_v2/src/components/categories_listview.dart';
import 'package:masckota_v2/src/screens/register_page.dart';
import 'package:masckota_v2/src/screens/login_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:masckota_v2/src/components/horizontal_listview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
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
          SizedBox(
            height: 195,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 385,
                  child: imageCarousel,
                  /*child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Buscar',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),*/
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
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
          
          SizedBox(
            width: double.infinity,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 128,
                    width: 380,
                    child: CategoriesList(),
                ),
              ],
            ),
          ),
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
          ),

          SizedBox(
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
          SizedBox(
            height: 50,
            //width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                SizedBox(
                  width: 370,
                  child: Text(
                    'Productos',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          //HorizontalList(),
        ],
      ),
//------------------------------------ MENU ---------------------------------//
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
//Header
            UserAccountsDrawerHeader(
                accountName: Text('Francisco Guerra'),
                accountEmail: Text('guerra.fran@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.deepOrange,
              ),
            ),
//Body
            InkWell(
              onTap: (){},
              child: const ListTile(
                  title: Text('Página principal'),
                  leading: Icon(Icons.home, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('Mi cuenta'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('Categorías'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('Favoritos'),
                leading: Icon(Icons.favorite, color: Colors.red),
              ),
            ),

            const Divider(),

            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('Registra tu negocio'),
                leading: Icon(Icons.add_business),
              ),
            ),

            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('Configuración'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('Acerca de'),
                leading: Icon(Icons.help, color: Colors.orange),
              ),
            ),

            InkWell(
              onTap: (){
                signout();
              },
              child: const ListTile(
                title: Text('Cerrar sesión'),
                leading: Icon(Icons.logout, color: Colors.deepOrange),
              ),
            ),
          ],
        ),
      ),
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