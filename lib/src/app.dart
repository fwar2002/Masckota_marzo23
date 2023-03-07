import 'package:flutter/material.dart';
import 'package:masckota_v2/src/screens/home_page.dart';
import 'package:masckota_v2/src/screens/login_page.dart';
import 'package:masckota_v2/src/screens/register_page.dart';
import 'package:masckota_v2/src/screens/splash_page.dart';
import 'package:masckota_v2/src/screens/forget_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return HomePage();
          } else{
            return LoginPage();
            /*return SplashScreen();*/
          }
        },
      ),
    );
  }
}