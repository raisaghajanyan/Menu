import 'package:flutter/material.dart';
import 'package:first_app/products_manager.dart';
import 'package:first_app/products.dart';
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
  List<String> _products = ['Lorem Ipsum is simply dummy text of the'
                             ' printing and typesetting industry.'
                              ' Lorem Ipsum has been the industrys'
                              ' standard dummy text ever since the '
      '1500s, when an unknown printer took a '
      'galley of type and scrambled it to make '
      'a type specimen book. It has survived not'
      ' only five centuries, but also the leap into'
      ' electronic typesetting, remaining essentially'
      ' unchanged. It was popularised in the 1960s with'
      ' the release of Letraset sheets containing '
      'Lorem'' Ipsum passages, and more recently with '
      'desktop'"publishing software like Aldus PageMaker"
      " including'' versions of Lorem Ipsum."];
  String _a='Hello World';
  TabController _tabController;
  build(context) {
    return MaterialApp(
      home:DefaultTabController(
        length: 3,
      child:Scaffold(
        appBar: AppBar(
          title: Text('WelCome To Home'),
          bottom: TabBar(

            controller: _tabController,
            tabs: [

              Tab(icon: Text('ADD')),
              Tab(icon: Text('PrPage'))
            ],
          ),
        ),
        body: new TabBarView(

          children: [
            new Card(
              child: ProductsManager(_a)
          ),
            Column(children :<Widget>[Products(_products)],),


          ],
        ),
    ),

    ),
    );
  }
}
