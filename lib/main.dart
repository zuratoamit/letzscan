
import 'package:flutter/material.dart';
import 'package:letzscan/app/dashboard.dart';
import 'package:letzscan/login.dart';
import 'package:letzscan/splash_screens.dart';
import 'package:letzscan/verify_otp.dart';

void main() {
  runApp(MaterialApp(
      title: 'Letzscan',
      theme: ThemeData(
        // Define the default brightness and colors.
        // brightness: Brightness.dark,
        primaryColor: const Color(0xAFEB3B34),

        // Define the default font family.
        // fontFamily: 'Georgia',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        // textTheme: const TextTheme(
        //   displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        //   titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        //   bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        // ),
      ),
    debugShowCheckedModeBanner: false,
    initialRoute: 'dashboard',
    routes: {
      'login' : (context)=>const MyLogin(),
      'dashboard' : (context)=>const Dashboard(),
      'verifyOpt' : (context)=>const VerifyOtp(),
      'splashScreens' : (context)=>const SplashScreens(),
    },
  ));
}
