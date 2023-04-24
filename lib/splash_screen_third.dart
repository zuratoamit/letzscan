import 'dart:ui';

import 'package:flutter/material.dart';

class SplashScreenThird extends StatefulWidget {
  const SplashScreenThird({Key? key}) : super(key: key);

  @override
  State<SplashScreenThird> createState() => _SplashScreenThirdState();
}

class _SplashScreenThirdState extends State<SplashScreenThird> {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    foregroundColor: Colors.white, minimumSize: const Size(88, 36),
    backgroundColor: const Color(0xAFEB3B34),
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 0),
                child: Row(
                  children: [
                  Expanded(
                      child:  RichText(
                        text: TextSpan(
                          text: 'Welcome to ',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 24.0,
                            // fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            color: Colors.blue.shade900,
                          ),
                          children: const <TextSpan>[
                            TextSpan(text: 'LET’S SCAN', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xAFEB3B34))),
                            TextSpan(text: ' click Login to continue'),
                          ],
                        ),
                      )
                  )

                  ],
                ),
              ),

              Container(
                  margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.topLeft,
                child: TextButton(
                  style: flatButtonStyle,
                  onPressed: () { },
                  child: const Text('Login'),
                )
                ),



              Container(
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                alignment: Alignment.centerLeft,
                child: Column(
                  children: const [
                    Image(
                        image: AssetImage('assets/splash_screen_img_3.png'),
                        fit: BoxFit.cover),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Text(
                      'OR',
                      textDirection: TextDirection.ltr,
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 24.0,
                        // fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.centerLeft,
                child: Row(
                  children:  [
                    const Icon(
                        Icons.chevron_right,
                        color: Colors.red,
                    ),
                    Text(
                      'Create your Account now',
                      textDirection: TextDirection.ltr,
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),

        // bottomNavigationBar:
      ),
    );
  }
}

