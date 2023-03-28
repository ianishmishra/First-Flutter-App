import 'package:firstapp8hours/pages/homepage.dart';
import 'package:firstapp8hours/pages/login_page.dart';
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

      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // initialRoute: "/home",
      routes: {
        "/":(context) => LoginPage(), // oboject of login page class
        "/home":(context) => HomePage(),// oboject of Home page class
        "/login":(context) => LoginPage(),
      },

    );
  }
}
