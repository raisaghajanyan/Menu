import 'package:flutter/material.dart';

class ProductPage  extends StatelessWidget{
  final String title;
  final String imageUrl;
  final double price;
  ProductPage(this.title,this.imageUrl,this.price);

  @override
  Widget build (BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Detail'),
        ),
        body:Column(children: <Widget>[
          Image.asset(imageUrl),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
            Text(title),
           Text(price.toString()
            )]),


          RaisedButton(
              child:Text('Delete'),
              onPressed:(){
                Navigator.pop(context);
              }
          )],));
  }
}