import 'package:ecommerce_firebase_flutter/database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget
{
  //static const routName= 'product_screen';
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  AllProductServer _productServer = AllProductServer();

  @override
  Widget build(BuildContext context) {
    //_productServer.readData();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Container(
                padding: EdgeInsets.all(20), child: _productServer.gettt(),),
          ),
          Expanded(
            flex: 1,
            child: _productServer.gettt(),
          ),
        ],
      ),
    );
  }
}
