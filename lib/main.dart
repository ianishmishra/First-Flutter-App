import 'package:firstapp8hours/homepage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp  extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    int days = 30;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
