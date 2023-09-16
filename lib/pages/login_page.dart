import 'package:flutter/material.dart';
import 'package:tugaspam/pages/home_page.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:tugaspam/pages/register_page.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
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
                    height: 20,
                  ),
                  Icon(
                    Icons.auto_awesome_mosaic,
                    color: Colors.black,
                    size: 100,
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  //Welcome Back
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Sign in to acces your account",
                    style: TextStyle(fontFamily: 'Poppins', color: Colors.grey),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //Email Field
                  TextFormField(
                    controller: emailController,
                    //input color text field
                    decoration: InputDecoration(
                      labelText: "Email",
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email tidak boleh kosong";
                      } else if (!value.contains("@")) {
                        return "Email tidak valid";
                      } else {
                        return null;
                      }
                    },
                  ),

                  //Password Field
                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    obscureText: true,
                    controller: passwordController,
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password tidak boleh kosong";
                      } else if (value.length < 6) {
                        return "Password minimal 6 karakter";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  // Forgot Password and remember me
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: rememberMe,
                            onChanged: (value) {
                              setState(() {
                                rememberMe = value!;
                              });
                            },
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),

                  //sign in button
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        String Email = 'yusril@gmail.com';
                        String Password = '123456789';
                        if (formKey.currentState!.validate()) {
                          if (emailController.text == Email &&
                              passwordController.text == Password) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Login Berhasil"),
                              ),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          } else {
                            emailController.clear();
                            passwordController.clear();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Email atau Password salah"),
                              ),
                            );
                          }
                        }
                      },
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

                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyRegisterPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.black, // Warna garis sesuai kebutuhan
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "or continue with",
                          style: TextStyle(
                            fontSize: 16, // Atur ukuran teks sesuai kebutuhan
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.black, // Warna garis sesuai kebutuhan
                        ),
                      ),
                    ],
                  ),

                  //google and facebook sign in
                  SizedBox(
                    height: 35,
                  ),
                  SignInButtonBuilder(
                    text: 'Get going with Facebook',
                    icon: Icons.facebook,
                    onPressed: () {
                      _showButtonPressDialog('Facebook');
                    },
                    backgroundColor: Color.fromARGB(255, 12, 43, 219),
                    width: 220.0,
                    height: 45,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SignInButton(
                    Buttons.google,
                    onPressed: () {
                      _showButtonPressDialog('Google');
                    },
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }

  void _showButtonPressDialog(String s) {}
}
