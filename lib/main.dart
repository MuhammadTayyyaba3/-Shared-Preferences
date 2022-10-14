import 'package:flutter/material.dart';
import 'package:shared_preference/Screens/login_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shared Preferences',
      theme: ThemeData(
      ),
      home: const LoginScreen()
    );
  }
}


