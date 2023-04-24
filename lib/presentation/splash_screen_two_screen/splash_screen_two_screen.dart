import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:letsscan/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreenTwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, top: 17, right: 15, bottom: 17),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgPath152,
                          height: getVerticalSize(11),
                          width: getHorizontalSize(52),
                          margin: getMargin(left: 48)),
                      CustomImageView(
                          svgPath: ImageConstant.imgPath154,
                          height: getVerticalSize(10),
                          width: getHorizontalSize(45),
                          alignment: Alignment.centerRight,
                          margin: getMargin(top: 32, right: 17)),
                      Container(
                          height: getVerticalSize(307),
                          width: getHorizontalSize(321),
                          margin: getMargin(left: 4, top: 33),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    margin: getMargin(left: 3, top: 14),
                                    padding: getPadding(
                                        left: 24,
                                        top: 21,
                                        right: 24,
                                        bottom: 21),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                fs.Svg(ImageConstant.imgGroup8),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgPath156,
                                              height: getVerticalSize(11),
                                              width: getHorizontalSize(58),
                                              margin: getMargin(top: 199))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getVerticalSize(307),
                                    width: getHorizontalSize(320),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgPath430,
                                              height: getVerticalSize(33),
                                              width: getHorizontalSize(74),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(
                                                  right: 19, bottom: 20)),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  height: getVerticalSize(290),
                                                  width: getHorizontalSize(159),
                                                  padding: getPadding(
                                                      left: 24,
                                                      top: 42,
                                                      right: 24,
                                                      bottom: 42),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: fs.Svg(
                                                              ImageConstant
                                                                  .imgGroup7),
                                                          fit: BoxFit.cover)),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Container(
                                                                height:
                                                                    getSize(88),
                                                                width:
                                                                    getSize(88),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            10),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .blueGray50))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            3),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                          height: getVerticalSize(
                                                                              110),
                                                                          width: getHorizontalSize(
                                                                              107),
                                                                          child: Stack(
                                                                              alignment: Alignment.topLeft,
                                                                              children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgQrcode, height: getSize(74), width: getSize(74), alignment: Alignment.center),
                                                                                CustomImageView(svgPath: ImageConstant.imgClose, height: getSize(19), width: getSize(19), alignment: Alignment.topLeft),
                                                                                CustomImageView(svgPath: ImageConstant.imgClose, height: getSize(19), width: getSize(19), alignment: Alignment.topRight),
                                                                                CustomImageView(svgPath: ImageConstant.imgClose, height: getSize(19), width: getSize(19), alignment: Alignment.bottomRight),
                                                                                CustomImageView(svgPath: ImageConstant.imgClose, height: getSize(19), width: getSize(19), alignment: Alignment.bottomLeft)
                                                                              ])),
                                                                      Container(
                                                                          margin: getMargin(
                                                                              left:
                                                                                  21,
                                                                              top:
                                                                                  27),
                                                                          padding: getPadding(
                                                                              left:
                                                                                  9,
                                                                              right:
                                                                                  9),
                                                                          decoration: AppDecoration.cta.copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .circleBorder10),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Padding(padding: getPadding(bottom: 1), child: Text("SCAN", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRomanBold146))
                                                                              ]))
                                                                    ])))
                                                      ]))),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgGlobe,
                                              height: getSize(46),
                                              width: getSize(46),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(right: 30)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgGroup2,
                                              height: getVerticalSize(179),
                                              width: getHorizontalSize(281),
                                              alignment: Alignment.bottomRight)
                                        ])))
                          ])),
                      Container(
                          width: getHorizontalSize(318),
                          margin: getMargin(top: 35, right: 10),
                          child: Text(
                              "One Tag. Many Benefits.\nCost Next To Nothing. Actually!",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRomanBold25)),
                      Padding(
                          padding: getPadding(top: 61, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: getVerticalSize(8),
                                    margin: getMargin(top: 19, bottom: 19),
                                    child: SmoothIndicator(
                                        offset: 0,
                                        count: 3,
                                        axisDirection: Axis.horizontal,
                                        effect: ScrollingDotsEffect(
                                            spacing: 9,
                                            activeDotColor:
                                                ColorConstant.indigo900,
                                            dotColor: ColorConstant.black90019,
                                            dotHeight: getVerticalSize(8),
                                            dotWidth: getHorizontalSize(8)))),
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
                                        decoration: AppDecoration.txtPrimary
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder23),
                                        child: Text("Next",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanMedium14WhiteA700)))
                              ]))
                    ]))));
  }

  onTapTxtButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreenThreeScreen);
  }
}
