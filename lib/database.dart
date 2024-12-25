import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'models/product.dart';
class AllProductServer
{
  String post = 'https://ecommerc-fff2d-default-rtdb.firebaseio.com/Products.json';

  List<Product> list = [];


  DatabaseReference? RootRef;
  final databaseReference = FirebaseDatabase.instance.ref().child('Products');



  Widget gettt()
  {
    return FirebaseAnimatedList(query: databaseReference,
        itemBuilder: (context,snap,animation,index)
        {
          return ListTile(
            title: Text(snap.child('pid').value.toString()),
          );
        }
        );
  }
  void readData(){
    databaseReference.once().then((value) {

       value.snapshot;
    });

  }

  void getProduct()

  {
    RootRef =  FirebaseDatabase.instance.reference().child('Products').child('أغسطس ٢٠, ٢٠٢٢١٦:٣٥:٤٧ م');
    //http.Response response = await http.get(Uri.parse(RootRef.toString()));

    Map p = RootRef as Map;

    //print(RootRef?.get().toString());
    // RootRef != null ?
    // print(RootRef)
    // : print('object');


  }




 //   GetDat()
 // async {
 //    RootRef = FirebaseDatabase.instance.ref().child('Products').child('pid');
 //    final snapshot = await RootRef?.child('path').child('on').get();
 //    if(!snapshot!.exists)
 //      {
 //        Map<String,String> user = {
 //
 //        };
 //      }
 //  }
}