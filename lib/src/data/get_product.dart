import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetProduct extends StatelessWidget{
  final String documentId;

  GetProduct({required this.documentId});

  @override
  Widget build(BuildContext context){
    //Get collection
    CollectionReference product = FirebaseFirestore.instance.collection('product');

    return Container();
  }
}