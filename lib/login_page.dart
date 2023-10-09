import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialmedia_app/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: h / 3,
            width: w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/login1.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: w,
            // ignore: prefer_const_constructors
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "Welcome",
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Sign in to your account",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 125, 125, 125),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: const Offset(
                              1,
                              1,
                            ),
                            color: Colors.grey.withOpacity(0.3),
                          )
                        ]),
                    child: const TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.perm_identity),
                          suffixIconColor: Color.fromARGB(255, 0, 202, 155),
                          hintText: "Enter your Name",
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 167, 167, 167)),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: const Offset(
                              1,
                              1,
                            ),
                            color: Colors.grey.withOpacity(0.3),
                          )
                        ]),
                    child: const TextField(
                      keyboardType: TextInputType.numberWithOptions(
                        signed: true,
                        decimal: true,
                      ),
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.key),
                          suffixIconColor: Color.fromARGB(255, 0, 202, 155),
                          hintText: "Enter the password",
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 167, 167, 167)),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: w,
            // ignore: prefer_const_constructors
            margin: EdgeInsets.only(left: 20, right: 20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "forget password",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 125, 125, 125),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            height: h * 0.07,
            width: w,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 7,
                  offset: const Offset(
                    1,
                    1,
                  ),
                  color: Colors.grey.withOpacity(0.4),
                )
              ],
              borderRadius: BorderRadius.circular(40),
              image: const DecorationImage(
                  image: AssetImage("assets/img/signin.jpg"),
                  fit: BoxFit.cover),
            ),
            child: const Center(
              child: Text(
                "sign in",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(
                text: "Don\'t have any account?",
                style: const TextStyle(color: Colors.grey, fontSize: 15),
                children: [
                  TextSpan(
                    text: " Create",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 14, 161, 136),
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.to(const SignupPage(),
                          transition: Transition.rightToLeft),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
