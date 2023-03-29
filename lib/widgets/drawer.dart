import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSINoFeI8r7b_zuGNLYGjGw0_yw86uD9EVSjPd2ftJYbw&usqp=CAU&ec=48665701";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                      backgroundImage:NetworkImage(imageUrl),
                      ),
                  accountName: Text("Anish Kumar"),
                  accountEmail: Text("Ianishmishra@gmail.com"),
                ),
            ),
            ListTile(
              onTap: (){

              },
              leading : Icon(
                CupertinoIcons.home,
                color: Colors.white),
              title: Text(
                  "Home",
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              onTap: (){

              },
              leading : Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              onTap: (){

              },
              leading : Icon(
                  CupertinoIcons.mail,
                  color: Colors.white),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
