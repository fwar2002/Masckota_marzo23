import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetCategoryL1Image extends StatelessWidget {
  final String documentId;

  GetCategoryL1Image({required this.documentId});

  @override
  Widget build(BuildContext context){
    CollectionReference category_l1 = FirebaseFirestore.instance.collection('category_l1');

    return FutureBuilder<DocumentSnapshot>(
      future: category_l1.doc(documentId).get(),
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