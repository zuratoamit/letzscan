import 'package:flutter/material.dart';

class SplashScreenSecond extends StatefulWidget {
  const SplashScreenSecond({Key? key}) : super(key: key);

  @override
  State<SplashScreenSecond> createState() => _SplashScreenSecondState();
}

class _SplashScreenSecondState extends State<SplashScreenSecond> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 0),
                alignment: Alignment.centerLeft,
                child: Column(
                  children: const [
                    Image(
                        image: AssetImage('assets/splash_screen_img_2.png'),
                        fit: BoxFit.cover),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                          'One Tag. Many Benefits.Cost Next To Nothing. Actually!',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 24.0,
                            // fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            color: Colors.blue.shade900,
                          ),
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
