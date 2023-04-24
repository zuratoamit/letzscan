import 'package:flutter/material.dart';
import 'package:letsscan/core/app_export.dart';
import 'package:letsscan/presentation/edit_profile_page/edit_profile_page.dart';
import 'package:letsscan/presentation/manage_orders_page/manage_orders_page.dart';
import 'package:letsscan/presentation/manage_tags_page/manage_tags_page.dart';
import 'package:letsscan/presentation/referral_page/referral_page.dart';
import 'package:letsscan/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ReferralContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray5001,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.referralPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.referralPage;
      case BottomBarEnum.Tags:
        return AppRoutes.manageTagsPage;
      case BottomBarEnum.Checkstatus:
        return "/";
      case BottomBarEnum.Orders:
        return AppRoutes.manageOrdersPage;
      case BottomBarEnum.Profile:
        return AppRoutes.editProfilePage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.referralPage:
        return ReferralPage();
      case AppRoutes.manageTagsPage:
        return ManageTagsPage();
      case AppRoutes.manageOrdersPage:
        return ManageOrdersPage();
      case AppRoutes.editProfilePage:
        return EditProfilePage();
      default:
        return DefaultWidget();
    }
  }

  @override
  void onInit(BuildContext context) {}
}
