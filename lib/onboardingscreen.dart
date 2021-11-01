import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

final _controller = PageController(
  initialPage: 0,
);
int _currentPage = 0;
List<Widget> _Pages = [
  Column(
    children: [
      Expanded(child:Image.asset('assets/images/green.png',height: 370,width: 370,)),
      const Text('Eat Green',style: TextStyle(fontSize: 50,color: Color(0xFF356713)),),
      const SizedBox( height: 10,),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text('The vitamin K contents of dark green leafy'
            ' vegetables provide a number of health benefits '
            'including: protecting bones from osteoporosis'
            ' .',textAlign: TextAlign.center,style: TextStyle(fontSize: 16),),
      ),
      const SizedBox( height: 100,),
    ],
  ),
  Column(
    children: [
      Expanded(child:Image.asset('assets/images/food.png',height: 370,width: 370,)),
      const Text('Organic Food',style: TextStyle(fontSize: 50,color: Color(0xFF356713)),),
      const SizedBox( height: 10,),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text('Is organic food more nutritious than regular food? '
            'Organic foods are not healthier, '
            'per se, in terms of nutrients.',textAlign: TextAlign.center,style: TextStyle(fontSize: 16),),
      ),
      const SizedBox( height: 100,),
    ],
  ),
  Column(
    children: [
      Expanded(child:Image.asset('assets/images/health.png',height: 370,width: 370,)),
      const Text('Be Healthy',style: TextStyle(fontSize: 50,color: Color(0xFF356713)),),
      const SizedBox( height: 10,),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text('A healthful diet typically includes'
            ' nutrient-dense foods from all major food groups, including lean proteins, '
            ' .',textAlign: TextAlign.center,style: TextStyle(fontSize: 16),),
      ),
      const SizedBox( height: 100,),
    ],
  ),
];


class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child:
          PageView(
            controller: _controller,
            children: _Pages,
            onPageChanged: (index){
              setState(() {
                _currentPage = index;
              });
            },

          ),
          ),
          const SizedBox(height: 50,),
          DotsIndicator(
            dotsCount: _Pages.length,
            position: _currentPage.toDouble(),
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              activeColor: Color(0xFF356713),

            ),
          ),
          const SizedBox(height: 100,)

        ],
      ),
    );
  }
}
