import 'package:flutter/material.dart';
import 'package:letsscan/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreenOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 20, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtSkip(context);
                              },
                              child: Padding(
                                  padding: getPadding(right: 17),
                                  child: Text("Skip",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratRomanMedium14)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(322),
                              margin: getMargin(left: 16, top: 22, right: 21),
                              child: Text(
                                  "Park your Vehicle outside with Peace of Mind",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRomanBold24))),
                      Container(
                          width: getHorizontalSize(302),
                          margin: getMargin(left: 16, top: 18, right: 41),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Say Goodbye to Parking Worries with ",
                                    style: TextStyle(
                                        color: ColorConstant.black90066,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w700)),
                                TextSpan(
                                    text: "LET’S SCAN",
                                    style: TextStyle(
                                        color: ColorConstant.red600,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w700))
                              ]),
                              textAlign: TextAlign.left)),
                      Container(
                          height: getVerticalSize(466),
                          width: double.maxFinite,
                          margin: getMargin(top: 38, bottom: 5),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: getPadding(
                                        left: 16, top: 419, right: 16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              height: getVerticalSize(8),
                                              margin: getMargin(
                                                  top: 19, bottom: 19),
                                              child: SmoothIndicator(
                                                  offset: 0,
                                                  count: 3,
                                                  axisDirection:
                                                      Axis.horizontal,
                                                  effect: ScrollingDotsEffect(
                                                      spacing: 9,
                                                      activeDotColor:
                                                          ColorConstant
                                                              .indigo900,
                                                      dotColor: ColorConstant
                                                          .black90019,
                                                      dotHeight:
                                                          getVerticalSize(8),
                                                      dotWidth:
                                                          getHorizontalSize(
                                                              8)))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapTxtButton(context);
                                              },
                                              child: Container(
                                                  width: getSize(47),
                                                  padding: getPadding(
                                                      left: 6,
                                                      top: 13,
                                                      right: 6,
                                                      bottom: 13),
                                                  decoration: AppDecoration
                                                      .txtPrimary
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder23),
                                                  child: Text("Next",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRomanMedium14WhiteA700)))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    height: getVerticalSize(442),
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgVector1,
                                              height: getVerticalSize(278),
                                              width: getHorizontalSize(336),
                                              alignment: Alignment.topCenter),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: getVerticalSize(429),
                                                  width: double.maxFinite,
                                                  padding: getPadding(
                                                      left: 6,
                                                      top: 41,
                                                      right: 6,
                                                      bottom: 41),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              ImageConstant
                                                                  .imgGroup142),
                                                          fit: BoxFit.cover)),
                                                  child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            115),
                                                                child: Text(
                                                                    "SCAN",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratRomanSemiBold9))),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgG84,
                                                            height:
                                                                getVerticalSize(
                                                                    296),
                                                            width:
                                                                getHorizontalSize(
                                                                    330),
                                                            alignment: Alignment
                                                                .bottomCenter),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage7,
                                                            height:
                                                                getVerticalSize(
                                                                    49),
                                                            width: getHorizontalSize(
                                                                154),
                                                            alignment: Alignment
                                                                .topCenter,
                                                            margin: getMargin(
                                                                top: 31))
                                                      ])))
                                        ])))
                          ]))
                    ]))));
  }

  onTapTxtSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreenTwoScreen);
  }

  onTapTxtButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreenTwoScreen);
  }
}
