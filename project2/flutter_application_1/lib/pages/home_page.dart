import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Dipanshu";
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalog App",
          style: TextStyle(color: Colors.white), // Text color set to white
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(
          color: Colors.white, // Drawer icon color set to white
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Day $days - Welcome to Flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
