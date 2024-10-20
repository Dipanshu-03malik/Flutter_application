import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
// import 'package:google_fonts/google_fonts.dart';
void main()
{
  runApp (Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  
  @override
  
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.light, // or ThemeMode.dark or ThemeMode.system
      theme: MyTheme.lightTheme(context), // Pass context to lightTheme
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        "/": (context) => login_Page(),
        MyRoutes.loginRoute: (context) => login_Page(),
        MyRoutes.homeRoute: (context) => HomePage(),

      },
    );
  }
}
