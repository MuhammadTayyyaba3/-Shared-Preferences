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
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.fromLTRB(10,50,10,00),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              CircleAvatar(
                backgroundColor: BGColor,
                child: Icon(Icons.account_circle_rounded,size: 100,),
                radius: 50,
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  suffixIcon: const Icon(Icons.email_outlined,color: BGColor,),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffA2B5BB),
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: BGColor,
                      )
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  suffixIcon: const Icon(Icons.lock_open,color: BGColor,),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xffA2B5BB),
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: BGColor,
                      )
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              ButtonDesign(btnText: 'Login',),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account yet?"),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                    },
                      child: const Text('Sign up',style: TextStyle(color: BGColor,fontSize: 16),))
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
