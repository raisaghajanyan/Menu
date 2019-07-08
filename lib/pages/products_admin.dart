import 'package:flutter/material.dart';
import 'package:first_app/pages/list.dart';
import 'package:first_app/pages/edit.dart';
class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController (
      length: 2,
      child:Scaffold(
      appBar: new AppBar(title: new Text('Admin Page'),
        bottom:TabBar(
        tabs: [
          Tab(text:'Edit', icon:Icon(Icons.edit)),
          Tab(text: 'List', icon:Icon(Icons.list)),
        ],
      )),
      body: TabBarView(
        children: [
          Edit(),
          List(),

        ],
      ),

    ),

    );
  }
}
