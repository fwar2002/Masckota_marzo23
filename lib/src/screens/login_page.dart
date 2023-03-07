import 'package:flutter/material.dart';
import 'package:masckota_v2/src/screens/register_page.dart';
import 'package:masckota_v2/src/screens/forget_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../app.dart';

class LoginPage extends StatefulWidget{
  LoginPage({Key? key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _loading = false;
  final _formkey = GlobalKey<FormState>();

  String userName = "";
  String password = "";
  bool showPassword = false;

  final controller = TextEditingController();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose(){
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 40),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.deepOrange,
                      Colors.deepOrangeAccent,
                    ],
                ),
              ),
              child: Image.asset(
                  "lib/src/assets/images/logo_m.png",
                color: Colors.white,
                height: 200,
              ),
            ),
            SizedBox(
                child: AppBar(elevation: 0, backgroundColor: Colors.transparent), height: kToolbarHeight + 25),
            Transform.translate(
              offset: Offset(0, 50),
              child: Center(
                child: SingleChildScrollView(
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: usernameController,
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return "Este campo es obligatorio";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText: "Correo electrónico",
                              hintText: "Ingrese su correo electrónico",
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(), // add padding to adjust icon
                                child: Icon(Icons.email),
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: TextStyle(color: Colors.deepOrange),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(24.0)),
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(24.0)),
                                borderSide: BorderSide(width: 1.4, color: Colors.grey),
                              ),

                            ),

                          ),
                          const SizedBox(height: 25),
                          TextFormField(
                            controller: passwordController,
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return "Este campo es obligatorio";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: "Contraseña",
                              hintText: "Ingrese su contraseña",
                              prefixIcon: const Padding(
                                padding: EdgeInsets.only(), // add padding to adjust icon
                                child: Icon(Icons.lock),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(showPassword?Icons.visibility:Icons.visibility_off),
                                onPressed: (){
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                },
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              labelStyle: const TextStyle(color: Colors.deepOrange),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(24.0)),
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(24.0)),
                                borderSide: BorderSide(width: 1.4, color: Colors.grey),
                              ),
                            ),
                            obscureText: !showPassword,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[

                              TextButton(
                                style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 12),
                                ),
                                onPressed: () {
                                  _showForget(context);
                                },
                                child: const Align(
                                  child: Text('¿Olvidaste la contraseña?'),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 2),
                          ElevatedButton(
                            onPressed: signIn,
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrangeAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              fixedSize: const Size(340, 60),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Iniciar sesión"),
                                if(_loading)
                                  Container(
                                    height: 20,
                                    width: 20,
                                    margin: const EdgeInsets.only(left: 20),
                                    child: CircularProgressIndicator(),
                                  )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: (){
                              _showRegister(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, // thickness
                                    color: Colors.grey, // color
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
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future signIn() async {
    final isValid = _formkey.currentState!.validate();
    if (!isValid) return;
    try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: usernameController.text.trim(),
          password: passwordController.text.trim(),
        );
      } on FirebaseAuthException catch (e) {
        print(e.toString());
        var snackbar = SnackBar(content: Text(e.toString()), backgroundColor: Colors.red);
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
        return null;
      }

      /*return const MainApp();*/

    MaterialPageRoute(builder: (context) => const MainApp());
  }

  void _showRegister(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterPage()));
  }

  void _showForget(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgetPage()));
  }
}



