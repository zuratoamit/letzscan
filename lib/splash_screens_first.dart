import 'package:flutter/material.dart';

class SplashScreenFirst extends StatefulWidget {
  const SplashScreenFirst({Key? key}) : super(key: key);

  @override
  State<SplashScreenFirst> createState() => _SplashScreenFirstState();
}

class _SplashScreenFirstState extends State<SplashScreenFirst> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 0),
                child: Row(
                  children: [
                    Text(
                      'Park your Vehicle outside with\nPeace of Mind',
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
                child: Column(
                  children: const [
                    Text(
                      'Say Goodbye to Parking Worries with',
                      textDirection: TextDirection.ltr,
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 5),
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Text(
                      'LETZSCAN',
                      textDirection: TextDirection.ltr,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        color: Colors.red.shade600,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 20),
                alignment: Alignment.centerLeft,
                child: Column(
                  children: const [
                    Image(
                        image: AssetImage('assets/splash_screen_img.png'),
                        fit: BoxFit.cover),
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
