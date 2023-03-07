import 'package:flutter/material.dart';
import 'package:masckota_v2/src/screens/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForgetPage extends StatefulWidget{
  ForgetPage({Key? key}) : super(key: key);

  _ForgetPageState createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
  bool _loading = false;
  final _formkey = GlobalKey<FormState>();

  String userName = "";
  String password = "";
  bool showPassword = false;

  final TextEditingController usernameController = TextEditingController();

  @override
  void dispose(){
    usernameController.dispose();
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
              offset: Offset(0, -5),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Introduzca su correo de registro y le enviaremos',
                                style: TextStyle(
                                    color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'un link para recuperar su contraseña',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
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
                          ElevatedButton(
                            onPressed: resetPassword,
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
                                Text("Enviar"),
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

  Future resetPassword() async{
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()),
    );
    
    try {
      final isValid = _formkey.currentState!.validate();
      if (!isValid) return;

      await FirebaseAuth.instance.sendPasswordResetEmail(
          email: usernameController.text.trim()
      );
      var snackbar = SnackBar(content: Text('Se ha enviado un email para recuperar la contraseña'), backgroundColor: Colors.green);

      Navigator.of(context).popUntil((route) => route.isFirst);
    } on FirebaseAuthException catch (e){
      print(e.toString());
      var snackbar = SnackBar(content: Text(e.toString()), backgroundColor: Colors.red);
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
      /*return null;*/
      Navigator.of(context).pop();
    }
  }
}