import 'package:flutter/material.dart';
import 'package:first_app/products.dart';


class ProductsManager extends StatefulWidget {
  final String startingProduct;

  ProductsManager(this.startingProduct);


  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<String> _products = [];

  @override
  void initState() {

    super.initState();
    _products.add(widget.startingProduct);

  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
            setState(() {
              _products.add('Advanced food tester');
              print(_products);
            });
          },
        ),
        Products(_products),

      ],
    );
  }

}