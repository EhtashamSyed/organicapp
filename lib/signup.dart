import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:   [
            const SizedBox(height: 30,),
            Image.asset('assets/images/new.png',height:150,width:150,),
            // const Text('Register Your Self!',style: TextStyle(
            //     color: Colors.blueGrey,
            //     fontSize: 30,
            //     fontWeight: FontWeight.bold
            // ),),
            const SizedBox(height: 5,),
            const Text('Register Your Self!',style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),),
            const SizedBox(height: 10,),
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
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                  hintText: 'Enter Your Email',
                  alignLabelWithHint: true,
                  hintStyle: TextStyle(color: Colors.black,fontSize: 17),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF356713),),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF356713),),
                  ),
                  prefixIcon: Icon(
                    Icons.mail_outline,
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
            const SizedBox(height: 1,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Re-enter Your Password',
                  labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                  hintText: 'Confirm Your Password',
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
            const SizedBox(width: 10,),
            ElevatedButton(onPressed: (){},
              child: const Text('Submit',
                style: TextStyle(fontSize: 20 ),),
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 50),
                  padding: const EdgeInsets.all(10),
                  primary: const Color(0xFF356713),
                  shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),

              ),
            ),
            const SizedBox(width: 20,),
            Row(mainAxisAlignment:MainAxisAlignment.center,
              children:  [
                const Text("Already have an account?",style: TextStyle(fontSize: 18),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => const LoginPage ()));
                },
                    child: const Text('Login',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
