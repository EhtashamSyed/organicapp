

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}
List<PageViewModel> listPagesViewModel(){
  return[
    PageViewModel(
      title: "Eat Green",
      body: 'The vitamin K contents of dark green leafy'
          ' vegetables provide a number of health benefits '
          'including: protecting bones from osteoporosis'
          '',

      image: Center(
        child: Image.asset('assets/images/green.png', height: 200.0),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(color:Color(0xFF356713),fontSize: 30,fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w500),
        bodyAlignment: Alignment.center,
          imageAlignment: Alignment.center,
        imageFlex: 2,
        bodyFlex: 1,
          fullScreen: true,
      ),
    ),
    PageViewModel(

      title: "Organic Food",
      body: 'Is organic food more nutritious than regular food? '
          'Organic foods are not healthier, '
          'per se, in terms of nutrients.',
      image: Center(
        child: Image.asset('assets/images/food.png', height: 200.0),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(color:Color(0xFF356713),fontSize: 30,fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w500),
        bodyAlignment: Alignment.center,
        imageAlignment: Alignment.center,
        imageFlex: 2,
        bodyFlex: 1,
        fullScreen: true,

      ),

    ),
    PageViewModel(
      title: "Be Healthy",
      body: 'A healthful diet typically includes'
          ' nutrient-dense foods from all major food groups, including lean proteins, '
          ' .',
      image: Center(
        child: Image.asset('assets/images/health.png', height: 200.0),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(color:Color(0xFF356713),fontSize: 30,fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w500),
        bodyAlignment: Alignment.center,
        imageAlignment: Alignment.center,
        imageFlex: 2,
        bodyFlex: 1,
        fullScreen: true,
      ),
    ),

  ];
}
class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: listPagesViewModel(),
        showDoneButton: true,
        done: const Text("Done", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Color(0xFF356713),),),
        skip: const Text('skip',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Color(0xFF356713),),),
        showSkipButton: true,
        next: const Text('next',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Color(0xFF356713),),),
        showNextButton: true,
        onDone: () {
          // When done button is press
        },
        dotsDecorator: const DotsDecorator(
          color:Color(0xFF356713),
          activeSize: Size(22.0, 10.0),
          activeColor : Colors.lightGreen,
          activeShape: RoundedRectangleBorder(

            borderRadius: BorderRadius.all(Radius.circular(25.0),),

          ),
        ),

      ), //Mater,
    );
  }
}
