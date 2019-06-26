import 'package:flutter/material.dart';
import 'package:first_app/products_manager.dart';
main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {
  List<String> products = ['Food Tester'];
  build(context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('first app'),
              backgroundColor: Colors.deepPurpleAccent,
            ),
            body: ProductsManager('Food Tester')));
  }
}
