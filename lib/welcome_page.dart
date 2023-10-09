import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
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
                    image: AssetImage("assets/img/welcome.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: w,
            // ignore: prefer_const_constructors
            margin: EdgeInsets.only(left: 20, right: 20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                const Text(
                  "abc@example.com",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 125, 125, 125),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 250,
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
                "sign out",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
