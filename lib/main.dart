import 'package:flutter/material.dart';
import 'package:masckota_v2/src/screens/home_page.dart';
import 'src/app.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:masckota_v2/src/screens/login_page.dart';
import 'package:masckota_v2/src/screens/register_page.dart';
import 'package:masckota_v2/src/screens/splash_page.dart';
import 'package:masckota_v2/src/screens/forget_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Masckota APP',
      initialRoute: "/",

      theme: ThemeData(
      /*textTheme: GoogleFonts.robotoTextTheme(
        Theme.of(context).textTheme,
      ),*/
        /*textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),*/
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ),
        //fontFamily: 'sacramento',
        brightness: Brightness.light,
        primaryColor: Colors.deepOrange,
        accentColor: Colors.deepOrangeAccent,
        appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.white)),
      ),
      debugShowCheckedModeBanner: false,
      home: const MainApp(),
    );
  }
}
/*class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Masckota APP',
      initialRoute: "/",
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepOrange,
        accentColor: Colors.deepOrangeAccent,
        appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.white)),
      ),
      routes: {
        "/": (BuildContext context) => SplashScreen(),
        "/login": (BuildContext context) => LoginPage(),
        "/register": (BuildContext context) => RegisterPage(),
        "/forget": (BuildContext context) => ForgetPage(),
      },
    );
  }
}*/
/*void main() => runApp(MyApp());*/

