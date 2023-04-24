import 'package:flutter/material.dart';
import 'package:letsscan/core/app_export.dart';
import 'package:letsscan/presentation/edit_profile_page/edit_profile_page.dart';
import 'package:letsscan/presentation/manage_orders_page/manage_orders_page.dart';
import 'package:letsscan/presentation/manage_tags_page/manage_tags_page.dart';
import 'package:letsscan/presentation/referral_page/referral_page.dart';
import 'package:letsscan/widgets/app_bar/appbar_circleimage.dart';
import 'package:letsscan/widgets/app_bar/appbar_image.dart';
import 'package:letsscan/widgets/app_bar/appbar_subtitle.dart';
import 'package:letsscan/widgets/app_bar/custom_app_bar.dart';
import 'package:letsscan/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class VehicleStatusScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray5001,
            appBar: CustomAppBar(
                height: getVerticalSize(91),
                leadingWidth: 22,
                leading: AppbarImage(
                    height: getVerticalSize(13),
                    width: getHorizontalSize(6),
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 16, top: 39, bottom: 39),
                    onTap: () => onTapArrowleft1(context)),
                title: AppbarSubtitle(
                    text: "Vehicle Status", margin: getMargin(left: 15)),
                actions: [
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgEllipse4,
                      margin:
                          getMargin(left: 16, top: 23, right: 16, bottom: 23))
                ],
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(622),
                        width: double.maxFinite,
                        margin: getMargin(top: 30),
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  margin: getMargin(
                                      left: 16,
                                      top: 20,
                                      right: 16,
                                      bottom: 404),
                                  padding: getPadding(top: 9, bottom: 9),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgCarsvgrepocom,
                                            height: getSize(180),
                                            width: getSize(180)),
                                        Container(
                                            width: getHorizontalSize(83),
                                            margin:
                                                getMargin(top: 38, bottom: 47),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "Good to\n",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .teal700Cc,
                                                          fontSize:
                                                              getFontSize(20),
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontWeight:
                                                              FontWeight.w700)),
                                                  TextSpan(
                                                      text: "Go",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .teal700Cc,
                                                          fontSize:
                                                              getFontSize(50),
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontWeight:
                                                              FontWeight.w700))
                                                ]),
                                                textAlign: TextAlign.center))
                                      ]))),
                          CustomImageView(
                              imagePath: ImageConstant.imgAnimation500lgkopij4,
                              height: getVerticalSize(622),
                              width: getHorizontalSize(360),
                              alignment: Alignment.center)
                        ])))),
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

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
