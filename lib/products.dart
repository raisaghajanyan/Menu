import 'package:flutter/material.dart';
import 'package:first_app/pages/product.dart';

class Products extends StatelessWidget {
  final  List<String> products;

  Products ([this.products = const[]]){
    print("[Products Widget] Constructor");
  }


  Widget _buildProductItem(BuildContext context,int index){
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(
              products[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  child: Text('Detalis'),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductPage()),
                    );
                  }
              )
            ],
          )



        ],
      ),
    );


  }
  Widget buildProductList(){
    Widget productCard;
    if(products.length > 0){
      productCard = ListView.builder(
        itemBuilder:_buildProductItem,
        itemCount:products.length,
      );
    }
    else{
      return Center(child: Text('No Products found'),);
    }
    return productCard;

  }


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: _buildProductItem,
      ),
    );
  }
}
