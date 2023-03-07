import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:masckota_v2/src/screens/register_page.dart';
import 'package:masckota_v2/src/screens/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void iniState(){
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value){
      /*Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (ctx) => Home()));*/
    });
  }
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
                  height: 430.0,
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
                    _showRegister(context);
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
                    fixedSize: const Size(340, 60),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "Crear una nueva cuenta",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,

                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            const SizedBox(height: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: (){
                    _showLogin(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1.5, // thickness
                        color: Colors.black, // color
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    fixedSize: const Size(340, 60),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "Iniciar sesión",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    _showRegister(context);
                  },
                  child: const Align(
                    child: Text(
                        'Omitir',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        /*shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0.3, 0.3),
                            blurRadius: 1.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          Shadow(
                            offset: Offset(0.3, 0.3),
                            blurRadius: 3.0,
                            color: Colors.black,
                          ),
                        ],*/
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showRegister(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterPage()));
  }

  void _showLogin(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
  }
}