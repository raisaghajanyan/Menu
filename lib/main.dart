import 'package:flutter/material.dart';
import 'package:first_app/products_manager.dart';
import 'package:first_app/pages/home.dart';

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
        home:HomePage()

    );}

}