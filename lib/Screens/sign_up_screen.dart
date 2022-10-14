import 'package:flutter/material.dart';
import 'package:shared_preference/Components/button_compo.dart';
import 'package:shared_preference/constants.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: BGColor,
        centerTitle: true,
        title: const Text('Registration'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  suffixIcon: const Icon(Icons.account_circle_rounded,color: BGColor,),
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
                decoration: InputDecoration(
                  hintText: 'Father Name',
                  suffixIcon: const Icon(Icons.supervisor_account,color: BGColor,),
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

              TextButton(
                  onPressed: (){
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        lastDate: DateTime.now()
                    );
                  },
                  child: const Icon(Icons.calendar_today_outlined)),
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
                      onTap: (){},
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
