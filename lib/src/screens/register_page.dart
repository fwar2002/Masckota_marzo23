import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:masckota_v2/src/screens/home_page.dart';
import 'package:flutter_translate/flutter_translate.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const RegisterPage());

}

class RegisterPage extends StatefulWidget{
  const RegisterPage({Key? key}) : super(key: key);

  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _loading = false;
  final _formkey = GlobalKey<FormState>();

  String userName = "";
  String password = "";
  bool showPassword = false;

  final controller = TextEditingController();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 40),
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
                height: kToolbarHeight + 25,
                child: AppBar(
                    elevation: 0, backgroundColor: Colors.transparent)),

            Center(
              child: SingleChildScrollView(
                child: Transform.translate(
                  offset: const Offset(0, 50),
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: nameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Este campo es obligatorio";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText: "Nombre y Apellido",
                              hintText: "Ingrese su Nombre",
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(),
                                // add padding to adjust icon
                                child: Icon(Icons.person),
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior
                                  .always,
                              labelStyle: TextStyle(color: Colors.deepOrange),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(24.0)),
                                borderSide: BorderSide(
                                    width: 1, color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(24.0)),
                                borderSide: BorderSide(
                                    width: 1.4, color: Colors.grey),
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),
                          TextFormField(
                            controller: usernameController,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value == null || value.isEmpty ||
                                  !value.contains('@') ||
                                  !value.contains('.') ||
                                  !value.contains('.com')) {
                                return "Correo electrónico no válido";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText: "Correo electrónico",
                              hintText: "Ingrese su correo electrónico",
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(),
                                // add padding to adjust icon
                                child: Icon(Icons.email),
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior
                                  .always,
                              labelStyle: TextStyle(color: Colors.deepOrange),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(24.0)),
                                borderSide: BorderSide(
                                    width: 1, color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(24.0)),
                                borderSide: BorderSide(
                                    width: 1.4, color: Colors.grey),
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),
                          TextFormField(
                            controller: passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Este campo es obligatorio";
                              }
                              if (value.length < 6) {
                                return "Ingrese mínimo 6 caracteres";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: "Contraseña",
                              hintText: "Ingrese su contraseña",
                              prefixIcon: const Padding(
                                padding: EdgeInsets.only(),
                                // add padding to adjust icon
                                child: Icon(Icons.lock),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                    showPassword ? Icons.visibility : Icons
                                        .visibility_off),
                                onPressed: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                },
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior
                                  .always,
                              labelStyle: const TextStyle(
                                  color: Colors.deepOrange),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(24.0)),
                                borderSide: BorderSide(
                                    width: 1, color: Colors.grey),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(24.0)),
                                borderSide: BorderSide(
                                    width: 1.4, color: Colors.grey),
                              ),
                            ),
                            obscureText: !showPassword,
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            /*onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                _formkey.currentState!.save();
                              }
                              final userName = usernameController.text;
                              final name = nameController.text;
                              final password = passwordController.text;

                              /*createUser(username: userName, name: name, password: password);*/
                              signup
                            },*/
                            onPressed: signUp,
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrangeAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              fixedSize: const Size(340, 60),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Text("Registrarse"),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
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

  Future signUp() async {
    final isValid = _formkey.currentState!.validate();
    if (!isValid) return;
    /*showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()),

    );*/
    await FirebaseAuth.instance.setLanguageCode("ES");
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: usernameController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      /*setState(() {
        var errorMessage = e.message;
        Utils.showSnackBar(e.message);
      });*/

      print(e.toString());
      var snackbar = SnackBar(content: Text(e.toString()), backgroundColor: Colors.red);
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
      return null;
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Registro"),
        content: Text("Usuario registrado con éxito"),
        actions: <Widget>[
          TextButton(
              child: const Text('Ok'),
              onPressed: (){
                /*Navigator.of(context).pop();*/
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage())
                );
              },
          ),
        ],
      ),
    );

   /*Navigator.push(context,
      MaterialPageRoute(builder: (context) => HomePage())
    );*/
  }
}
/*class Utils{
  final messengerKey = GlobalKey<ScaffoldMessengerState>();
  static showSnackBar(String? text){
    if(text == null) return;

    final snackBar = SnackBar(content: Text(text), backgroundColor: Colors.red);
    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}*/
/* _register(BuildContext context){
    if(_formkey.currentState!.validate()){
      _formkey.currentState!.save();

    }
  }*/

/* Código funciona OK insertando datos, se comentó para realizar el firebase auth / 13.02.2023*/
/*  Future createUser({required String username, required String name, required String password}) async{
    final docUser = FirebaseFirestore.instance.collection('user').doc();

    final user = User(
      idUser: docUser.id,
      username: username,
      name: name,
      password: password,
    );

    final json = user.toJson();

    await docUser.set(json);
  }
}

class User {
  String idUser;
  final String username;
  final String name;
  final String password;

  User({
    this.idUser = '',
    required this.username,
    required this.name,
    required this.password,
  });
  Map<String, dynamic> toJson() => {
    'idUser': idUser,
    'username': username,
    'name': name,
    'password': password,
  };
}*/

