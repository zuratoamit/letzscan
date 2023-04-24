import 'package:flutter/material.dart';
import 'package:letsscan/core/app_export.dart';
import 'package:letsscan/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreenThreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 21, right: 16, bottom: 21),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getVerticalSize(13),
                          width: getHorizontalSize(6),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Container(
                          width: getHorizontalSize(303),
                          margin: getMargin(top: 30, right: 25),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Welcome to ",
                                    style: TextStyle(
                                        color: ColorConstant.indigo900,
                                        fontSize: getFontSize(24),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w700)),
                                TextSpan(
                                    text: "LET’S SCAN\n",
                                    style: TextStyle(
                                        color: ColorConstant.red600,
                                        fontSize: getFontSize(24),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w700)),
                                TextSpan(
                                    text: "click Login to continue",
                                    style: TextStyle(
                                        color: ColorConstant.indigo900,
                                        fontSize: getFontSize(24),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w700))
                              ]),
                              textAlign: TextAlign.left)),
                      CustomButton(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(124),
                          text: "Login",
                          margin: getMargin(top: 33),
                          variant: ButtonVariant.Cta,
                          shape: ButtonShape.CircleBorder20,
                          padding: ButtonPadding.PaddingT7,
                          fontStyle: ButtonFontStyle.MontserratRomanMedium20,
                          suffixWidget: Container(
                              margin: getMargin(left: 10),
                              decoration:
                                  BoxDecoration(color: ColorConstant.red600),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowright)),
                          onTap: () => onTapLogin(context)),
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup8RedA100,
                          height: getVerticalSize(257),
                          width: getHorizontalSize(306),
                          alignment: Alignment.center,
                          margin: getMargin(top: 39)),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("or".toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRomanSemiBold24)),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgThumbsup,
                                    height: getVerticalSize(13),
                                    width: getHorizontalSize(15),
                                    margin: getMargin(bottom: 5)),
                                Padding(
                                    padding: getPadding(left: 10, top: 1),
                                    child: Text("Create your Account now",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRomanSemiBold14))
                              ])),
                      Container(
                          height: getVerticalSize(8),
                          margin: getMargin(top: 72, bottom: 5),
                          child: SmoothIndicator(
                              offset: 0,
                              count: 3,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                  spacing: 9,
                                  activeDotColor: ColorConstant.indigo900,
                                  dotColor: ColorConstant.black90019,
                                  dotHeight: getVerticalSize(8),
                                  dotWidth: getHorizontalSize(8)), ))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
