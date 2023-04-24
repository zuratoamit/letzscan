import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:letzscan/splash_screen_second.dart';
import 'package:letzscan/splash_screen_third.dart';
import 'package:letzscan/splash_screens_first.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({Key? key}) : super(key: key);
  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  // var pages = [const SplashScreenFirst(),const SplashScreenSecond(),];
  var pagesSlide = [
    Container(
      padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 30) ,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30.0,
              ),

              Text(
                'Skip',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.end,
              ),

            ],
          ),

          Expanded(

            child: PageView(
              children: const [
                SplashScreenFirst(),
                SplashScreenSecond(),
                SplashScreenThird(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.pop();
            },
            child:  Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // const SizedBox(width: 160.0),
                  // Alignment.lerp(10.0, 10.0, 10.0),
                  DotsIndicator(
                    dotsCount: 3,
                    // position: _currentPosition,
                    reversed: false,
                    decorator: DotsDecorator(
                      activeColor: Colors.blue.shade900,
                      size: const Size.square(12.0),
                      activeSize: const Size.square(12.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    onTap: (pos) {
                      // setState(() => _currentPosition = pos);
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => pages[pos.toInt()]),
                      // );
                    },
                  ),
                  const SizedBox(height: 16.0),
                  ClipOval(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                        backgroundColor: Colors.blue.shade900,
                      ),
                      child: const Icon(Icons.arrow_forward),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(

        children: pagesSlide,
      ),
    );
  }
}
