import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
void main()
{
  runApp (Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  
  @override
  
  Widget build(BuildContext context) {
    
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primaryColor: Colors.deepPurple,fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => login_Page(),
        MyRoutes.loginRoute: (context) => login_Page(),
        MyRoutes.homeRoute: (context) => HomePage(),

      },
    );
  }
}
