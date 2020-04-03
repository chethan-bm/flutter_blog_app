import 'package:flutter/material.dart';
import 'package:flutterblogapp/views/views.dart';
import 'package:flutterblogapp/services/crud.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CrudMethods crudMethods = new CrudMethods();
  Stream blogStream;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => NewBlog()));
        },
      ),
    );
  }
}