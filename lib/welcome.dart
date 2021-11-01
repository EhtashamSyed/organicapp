import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/signup.dart';

import 'login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      body: Center(
        child: Column(
          children:  [
            const SizedBox(height: 150,),
            DefaultTextStyle(
              style: const TextStyle(
                  fontSize: 30,
                  color: Color(0xFF356713),
                  fontFamily: 'MateSC'
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  FlickerAnimatedText('Stay healthy'),
                  WavyAnimatedText('Change your life style'),
                  //WavyAnimatedText('Stay healthy'),


                ],),),
            const SizedBox(height: 20,),
            // Container(
            //   margin: const EdgeInsets.only(left: 120),
            //   height:300 ,
            //   width: 300,
            //   child: Image.asset('assets/images/organic.png'),
            // ),
            Hero(
              
                tag: 'logo',
                child: Image.asset('assets/images/new.png',height:300,width:300,)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               ElevatedButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder:(context) => const LoginPage ()));
               },
                   child: const Text('Login',
                     style: TextStyle(fontSize: 20 ),),
                 style: ElevatedButton.styleFrom(
                   fixedSize: const Size(130, 50),
                   padding: const EdgeInsets.all(10),
                   primary: const Color(0xFF356713),
                   shape:  RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(30)
                   )
                 ),
               ),
                const SizedBox(width: 20,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => const SignupPage ()));
                },
                  child: const Text('Sign up',
                    style: TextStyle(fontSize: 20 ),),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(130, 50),
                      padding: const EdgeInsets.all(10),
                      primary: const Color(0xFF356713),
                      shape:  RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
