import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String ImageUrl = "https://images.pexels.com/photos/1805164/pexels-photo-1805164.jpeg";
    var cupertinoIcons = CupertinoIcons;
    return Drawer(
      child: Container(
        color: Colors.deepPurple.shade400,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(accountName: Text("DIPANSHU MALIK"),
              margin: EdgeInsets.zero,
               accountEmail: Text("@gmail.com"),
               currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(ImageUrl),
               ),
               ),
               
            ),
            ListTile(
            leading: Icon(CupertinoIcons.home,color: Colors.white),
            title: Text("Home",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white
            ),
            ),
            
            ),
            ListTile(
            leading: Icon(CupertinoIcons.profile_circled,color: Colors.white),
            title: Text("Profile",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white
            ),
            ),
            
            ),
            ListTile(
            leading: Icon(CupertinoIcons.mail,color: Colors.white),
            title: Text("Mail",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white
            ),
            ),
            
            ),
            ListTile(
            leading: Icon(CupertinoIcons.settings,color: Colors.white),
            title: Text("Settings",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white
            ),
            ),
            
            )

          ],
        ),
      ),
    );

  }
}