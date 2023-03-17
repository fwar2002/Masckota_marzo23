import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:masckota_v2/src/screens/register_page.dart';
import 'package:masckota_v2/src/screens/login_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:masckota_v2/src/components/horizontal_listview.dart';

class HomePage extends StatefulWidget {
  const HomePage({key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  List imageList = [
    {"id": 1, "image_path": 'lib/src/assets/images/productos_ofertas.jpg'},
    {"id": 2, "image_path": 'lib/src/assets/images/pet-food-blog-.jpg'},
    {"id": 3, "image_path": 'lib/src/assets/images/mascotas_varias2.jpg'},
    {"id": 4, "image_path": 'lib/src/assets/images/jornadas_adopcion.jpg'}
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

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context){
    Widget image_carousel = new CarouselSlider(
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
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Masckota APP'),
        actions: <Widget>[
          IconButton(
              onPressed: (){
                showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(),
                );
              },
              icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.shopping_cart, color: Colors.white)
          ),
        ],
      ),

     /* body: Expanded(
        child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network('lib/src/assets/images/categories/categories-dog.png'),
                  Text('Perros')
                ],
              ),
            ),
          ],
        ),
      ),*/
      body: ListView(
        children:  <Widget>[
          //image_carousel,     "Desativado  el 16.03.2023 FG
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categorías'),
          ),
          HorizontalList(),
        ],
      ),
      /*body: Column(
        children: [
          InkWell(
            onTap: (){
              print(currentIndex);
            },
            child: CarouselSlider(
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
            ),
          ),


          /*Positioned( - Comentado porque genera error (Fecha: 10.03.2023)
            bottom: 8,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry){
                print(entry);
                print(entry.key);
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    width: currentIndex == entry.key ? 21 : 7,
                    height: 6.0,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 3.0,
                      vertical: 16.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentIndex == entry.key
                        ? Colors.deepOrange
                          : Colors.grey),
                    ),
                  );
              }).toList(),
            ),
          ),*/
        ],
      ),*/

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