import 'package:flutter/material.dart';
import 'package:shared_preference/constants.dart';
class ButtonDesign extends StatelessWidget {
  String btnText;
  ButtonDesign({Key? key , required this.btnText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      child: Center(child: Text(btnText,style: TextStyle(color: Colors.white,fontSize: 20),)),
      decoration: BoxDecoration(
        color: BGColor,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
