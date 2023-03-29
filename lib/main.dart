import 'package:firstapp8hours/pages/homepage.dart';
import 'package:firstapp8hours/pages/login_page.dart';
import 'package:firstapp8hours/utils/routes.dart';
import 'package:firstapp8hours/widgets/themes.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

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
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      initialRoute: "/home",
      routes: {
        "/":(context) => LoginPage(), // oboject of login page class
        MyRoutes.homeRoute:(context) => HomePage(),// oboject of Home page class
        MyRoutes.loginRoute:(context) =>  LoginPage(),
      },

    );
  }
}
