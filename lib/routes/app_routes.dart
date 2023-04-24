import 'package:flutter/material.dart';
import 'package:letsscan/presentation/splash_screen_one_screen/splash_screen_one_screen.dart';
import 'package:letsscan/presentation/splash_screen_two_screen/splash_screen_two_screen.dart';
import 'package:letsscan/presentation/splash_screen_three_screen/splash_screen_three_screen.dart';
import 'package:letsscan/presentation/login_screen/login_screen.dart';
import 'package:letsscan/presentation/verification_screen/verification_screen.dart';
import 'package:letsscan/presentation/referral_container_screen/referral_container_screen.dart';
import 'package:letsscan/presentation/vehicle_status_screen/vehicle_status_screen.dart';
import 'package:letsscan/presentation/manage_profile_screen/manage_profile_screen.dart';
import 'package:letsscan/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:letsscan/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreenOneScreen = '/splash_screen_one_screen';

  static const String splashScreenTwoScreen = '/splash_screen_two_screen';

  static const String splashScreenThreeScreen = '/splash_screen_three_screen';

  static const String loginScreen = '/login_screen';

  static const String verificationScreen = '/verification_screen';

  static const String referralPage = '/referral_page';

  static const String referralContainerScreen = '/referral_container_screen';

  static const String vehicleStatusScreen = '/vehicle_status_screen';

  static const String editProfilePage = '/edit_profile_page';

  static const String manageProfileScreen = '/manage_profile_screen';

  static const String manageOrdersPage = '/manage_orders_page';

  static const String dashboardScreen = '/dashboard_screen';

  static const String manageTagsPage = '/manage_tags_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreenOneScreen: (context) => SplashScreenOneScreen(),
    splashScreenTwoScreen: (context) => SplashScreenTwoScreen(),
    splashScreenThreeScreen: (context) => SplashScreenThreeScreen(),
    loginScreen: (context) => LoginScreen(),
    verificationScreen: (context) => VerifyOTPScreen(),
    referralContainerScreen: (context) => ReferralContainerScreen(),
    vehicleStatusScreen: (context) => VehicleStatusScreen(),
    manageProfileScreen: (context) => ManageProfileScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
