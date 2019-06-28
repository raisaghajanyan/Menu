import 'package:flutter/material.dart';
import 'package:first_app/products.dart';
import './product_controll.dart';


class ProductsManager extends StatefulWidget {
  final Map startingProduct;

  ProductsManager({this.startingProduct});


  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<Map<String,dynamic>> _products = [];

  @override
  void initState() {

    super.initState();
//    _products.add(product);

  }

  void _addProduct(Map product){

    setState(() {
      _products.add(product);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ProductsControl(_addProduct),
          Products(_products),

        ],
      ),
    );
  }

}