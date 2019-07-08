
import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addProduct({
          'title':'Chocolate',
          'imageUrl':'assets/food.jpg',
          'price' : 1000,
        });
      },
      child: Text('Add Product'),
    );
  }
}