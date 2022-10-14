import 'package:flutter/material.dart';
import 'package:shared_preference/constants.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BGColor,
        centerTitle: true,
        title: Text('Home Screen'),
      ),

    );
  }
}
