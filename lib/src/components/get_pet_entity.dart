import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetPetData extends StatelessWidget {
  final String documentId;

  GetPetData({required this.documentId});

  @override
  Widget build(BuildContext context){
    CollectionReference category_l1 = FirebaseFirestore.instance.collection('category_l1');

    return FutureBuilder<DocumentSnapshot>(
      future: category_l1.doc(documentId).get(),
      builder: ((context, snapshot){
        if(snapshot.connectionState == ConnectionState.done){
          Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
          return Text(
            data['category_l1'],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          );
        }
        return Text('Cargando...');
      }),
    );
  }
}