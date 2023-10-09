import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialmedia_app/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    List images = ["g.png", "f.png", "t.png"];
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SafeArea(
            child: Container(
              height: h / 3,
              width: w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/signup.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Container(
            width: w,
            // ignore: prefer_const_constructors
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "Create Account",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
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
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.email),
                          suffixIconColor: Color.fromARGB(255, 0, 202, 155),
                          hintText: "Email",
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
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.password),
                          suffixIconColor: Color.fromARGB(255, 0, 202, 155),
                          hintText: "Password",
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
                "sign up",
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
              text: "Have an account!",
              style: const TextStyle(
                  color: Color.fromARGB(255, 14, 161, 136), fontSize: 20),
              recognizer: TapGestureRecognizer()
                ..onTap = () => Get.to(const LoginPage(),
                    transition: Transition.leftToRight),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Sign up using following methods",
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 125, 125, 125),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            children: List<Widget>.generate(3, (index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 2,
                        offset: const Offset(
                          3,
                          3,
                        ),
                        color: Colors.grey.withOpacity(0.9),
                      )
                    ]),
                padding: const EdgeInsets.all(12),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: const AssetImage("assets/img/signin.jpg"),
                  // backgroundColor: Color.fromARGB(255, 29, 209, 137),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      "assets/img/" + images[index],
                    ),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
