import 'package:flutter/material.dart';
import 'package:socialmedia_app/login_page.dart';
import 'package:get/get.dart';
import 'package:socialmedia_app/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
