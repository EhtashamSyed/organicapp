import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/signup.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //backgroundColor: Colors.lightGreen,
      body: SingleChildScrollView(
        child: Column(
          children:   [
            const SizedBox(height: 50,),
            Image.asset('assets/images/new.png',height:200,width:200,),
            // const Text('Welcome Back!',style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 30,
            //     fontWeight: FontWeight.bold
            // ),),
            const SizedBox(height: 20,),
            const Text('Welcome to Sign In!',style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                  hintText: 'Enter Your Name',
                  alignLabelWithHint: true,
                  hintStyle: TextStyle(color:Colors.black,fontSize: 17),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Color(0xFF356713),),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Color(0xFF356713),),
                  ),

                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.check_circle,
                    color: Color(0xFF356713),
                  ),
                ),

              ),
            ),
            const SizedBox(height: 1,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                  hintText: 'Enter Your Password',
                  alignLabelWithHint: true,
                  hintStyle: TextStyle(color: Colors.black,fontSize: 17),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF356713),),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF356713),),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Color(0xFF356713),
                  ),
                ),

              ),
            ),
            const SizedBox(width: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => const HomePage ()));
            },
              child: const Text('Login',
                style: TextStyle(fontSize: 20 ),),
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(110, 50),
                  padding: const EdgeInsets.all(10),
                  primary: const Color(0xFF356713),
                  shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  )
              ),
            ),
            const SizedBox(width: 50,),
            Row(mainAxisAlignment:MainAxisAlignment.center,
              children:  [
               const Text("Don't have an account",style: TextStyle(fontSize: 18),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => const SignupPage ()));
                },
                    child: const Text('Signup',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
