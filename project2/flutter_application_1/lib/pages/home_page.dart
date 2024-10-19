import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int Days=30;
    String name ="Dipanshu";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        backgroundColor: Colors.deepPurple,
      ),
        body: Center(
          child: Container(
            child: Text("day ${Days} Welcome to fluttor by ${name} "),
          ),
        ),
        drawer: Drawer(),
      );
  }
}