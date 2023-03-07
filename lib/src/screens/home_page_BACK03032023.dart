import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:masckota_v2/src/screens/register_page.dart';
import 'package:masckota_v2/src/screens/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
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
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepOrange,
              Colors.deepOrangeAccent,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Column(
              children: [
                Image.asset(
                  'lib/src/assets/images/logo_m.png',
                  height: 100.0,
                  width: 300.0,
                ),
              ],
            ),
            /*const CircularProgressIndicator(),*/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: (){
                    FirebaseAuth.instance.signOut();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrangeAccent,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1, // thickness
                        color: Colors.white, // color
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    fixedSize: const Size(300, 60),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      /*Text(user.email!),*/
                      Text('Cerrar sesión'),
                      /*Text(
                        "Cerrar sesión",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,

                        ),
                      ),*/
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}