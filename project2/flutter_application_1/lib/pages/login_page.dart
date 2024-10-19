import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class login_Page extends StatefulWidget {
  const login_Page({super.key});

  @override
  State<login_Page> createState() => _login_PageState();
}

class _login_PageState extends State<login_Page> {
  String name=" ";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          
          children: [
            Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
            Text(
              "Welcome ${name}",
              style: TextStyle(
                fontSize: 28,
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
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
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
                //   ElevatedButton(
                //     onPressed: () {
                //       // print("Button pressed");
                //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                //     },
                //     child: Text("Login"),
                //     style: ElevatedButton.styleFrom(
                //       foregroundColor: Colors.white, // Text color
                //       backgroundColor: Colors.deepPurple,
                //       minimumSize: Size(150,40) // Button color
                //     ),
                //   ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
              
                child: Container(
                        width: 150,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Color.fromARGB(255, 236, 236, 234),
                            fontWeight: FontWeight.bold,
                            fontSize: 18, // fontSize moved inside TextStyle
                          ),
                        ),
                        decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12),


                        ),
                      ),
                ),

                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
