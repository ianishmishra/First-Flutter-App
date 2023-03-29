import 'package:firstapp8hours/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Catalog App",style: TextStyle(color: Colors.black),),),
      body: Center(
        child: Container(
          child: Text("Welcome to 30days of Flutter"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
