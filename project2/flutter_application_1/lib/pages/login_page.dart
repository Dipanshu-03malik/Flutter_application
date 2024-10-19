import 'package:flutter/material.dart';

class login_Page extends StatelessWidget {
  const login_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        
        children: [
          Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
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
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, // Text color
                    backgroundColor: Colors.deepPurple, // Button color
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
