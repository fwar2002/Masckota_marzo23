import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetPetImage extends StatelessWidget {
  final String documentId;

  GetPetImage({required this.documentId});

  @override
  Widget build(BuildContext context){
    CollectionReference pets = FirebaseFirestore.instance.collection('pet');

    return FutureBuilder<DocumentSnapshot>(
      future: pets.doc(documentId).get(),
      builder: ((context, snapshot){
        if(snapshot.connectionState == ConnectionState.done){
          Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
          return Text(
            data['image_path'],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          );
        }
        return Text('Cargando...');
      }),
    );
  }
}