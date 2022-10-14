import 'package:flutter/material.dart';
import 'package:shared_preference/Components/button_compo.dart';
import 'package:shared_preference/Screens/sign_up_screen.dart';
import 'package:shared_preference/constants.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: BGColor,
        centerTitle: true,
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Email',
                suffixIcon: Icon(Icons.email_outlined,color: BGColor,),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xffA2B5BB),
                  )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: BGColor,
                    )
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter Password',
                suffixIcon: Icon(Icons.lock_open,color: BGColor,),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xffA2B5BB),
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: BGColor,
                    )
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            ButtonDesign(btnText: 'Login',),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account yet?"),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                  },
                    child: Text('Sign up',style: TextStyle(color: BGColor,fontSize: 16),))
              ],
            ),
          ],
        ),
      ),

    );
  }
}
