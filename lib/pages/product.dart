
import 'package:flutter/material.dart';

class ProductPage  extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('product detail'),
        ),
        body:Column(children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text('Sweets'),
          RaisedButton(
              child:Text('Back'),
              onPressed:(){
                Navigator.pop(context);
              }
          )],));
  }
}