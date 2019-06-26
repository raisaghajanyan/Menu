import 'package:flutter/material.dart';

class ProductsControl extends StatelessWidget{
  Function addProduct;
  ProductsControl(this.addProduct);
  @override
  Widget build (BuildContext context){
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text(
              'Press',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Colors.red,
            onPressed: () {
              addProduct();
            },
          ),
        ],
      ),
    );}
}
