import 'package:auth_task2/pages/login_screen.dart';
import 'package:auth_task2/pages/otp_screen.dart';
import 'package:auth_task2/pages/signup_screen.dart';
import 'package:flutter/material.dart';
import 'pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
