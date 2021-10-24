import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/welcome.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    Timer( const Duration(seconds: 5 ),(){
    Navigator.push(context, MaterialPageRoute(builder:(context) => const WelcomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF356713),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Image.asset('assets/images/new.png',height:300,width:300,),
            const SizedBox(height: 20,),
            const Text('Go Organic',style: TextStyle(
              fontSize: 30,
              color: Colors.white
            ),)
          ],
        ),
      ),
    );
  }
}
