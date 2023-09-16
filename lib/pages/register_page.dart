import 'package:flutter/material.dart';
import 'package:tugaspam/pages/home_page.dart';

class MyRegisterPage extends StatefulWidget {
  const MyRegisterPage({super.key});

  @override
  State<MyRegisterPage> createState() => _MyRegisterPageState();
}

class _MyRegisterPageState extends State<MyRegisterPage> {
  bool rememberMe = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: SafeArea(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Icon(
                    Icons.app_registration,
                    color: Colors.black,
                    size: 100,
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  //Welcome Back
                  Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Sign Up to Create New Account",
                    style: TextStyle(fontFamily: 'Poppins', color: Colors.grey),
                  ),

                  SizedBox(
                    height: 50,
                  ),

                  //Email Field
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Full Name",
                      labelStyle: TextStyle(
                          color: Colors.grey), // Warna label menjadi abu-abu
                      hintStyle: TextStyle(color: Colors.grey),
                      //icon email
                      prefixIcon: Icon(Icons.supervised_user_circle),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  //Password Field
                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Valid Email",
                      hintText: "Enter your email",
                      labelStyle: TextStyle(
                          color: Colors.grey), // Warna label menjadi abu-abu
                      hintStyle: TextStyle(color: Colors.grey),
                      //icon email
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Phone",
                      hintText: "Phone Number",
                      labelStyle: TextStyle(
                          color: Colors.grey), // Warna label menjadi abu-abu
                      hintStyle: TextStyle(color: Colors.grey),
                      //icon email
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    //input color text field,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter your Password",
                      labelStyle: TextStyle(
                          color: Colors.grey), // Warna label menjadi abu-abu
                      hintStyle: TextStyle(color: Colors.grey),
                      //icon password
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  //remember me and forgot password
                  SizedBox(
                    height: 10,
                  ),

                  //sign in button
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),

                  //sign up
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
