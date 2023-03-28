import 'package:firstapp8hours/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20,),
            Text("Welcome",
              style: TextStyle(
                  fontSize: 28,
                  ),
              ),
            SizedBox(height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 40,
                  ),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      )
                      
                  )
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}
