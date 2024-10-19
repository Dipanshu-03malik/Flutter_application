import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class login_Page extends StatefulWidget {
  const login_Page({super.key});

  @override
  State<login_Page> createState() => _login_PageState();
}

class _login_PageState extends State<login_Page> {
  String name=" ";
  bool ChangeButton = false;
  final _formKey =GlobalKey<FormState>();

  moveToHome(BuildContext context)
  async
  {
    if (_formKey.currentState?.validate() ?? false){
    setState(() {
      ChangeButton =true;
    });
                        // await is used because back aaye user toh login normal ho jaywe
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
      ChangeButton =false;
     });
    };
  }



  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                        return "Username can't be empty";
                      } 
                      else {
                        return null;
                      }
                      },
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                        return "Password can't be empty";
                      } 
                      else if (value.length < 8) {
                        return "Password length must be at least 8 characters";
                      } 
                      else {
                        return null;
                      }

                      }
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
                   Material(
                    color: Colors.deepPurple,//ripple effect
                    borderRadius:
                      BorderRadius.circular(ChangeButton ? 50 : 12),
                    child: InkWell(
                      onTap: () => moveToHome(context),
                    
                    
                    
                                  
                    child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: ChangeButton ? 50 : 150,
                          height: 40,
                          alignment: Alignment.center,
                          child: ChangeButton
                              ? const Icon(Icons.done, color: Colors.amber)
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 236, 236, 234),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                          
                        ),
                    ),
                  ),
          
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
