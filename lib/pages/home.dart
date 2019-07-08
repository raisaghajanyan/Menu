import 'package:flutter/material.dart';
import 'package:first_app/products_manager.dart';
import 'package:first_app/pages/products_admin.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: ProductManager(),
      drawer: Drawer(child: Column(children: <Widget>[
        AppBar(title: Text("Choose",),
          automaticallyImplyLeading: false,
        ),
        ListTile(
          title: Text("Manage Products"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Admin()),
            );
          }
        )


      ],),),
    );
  }
}