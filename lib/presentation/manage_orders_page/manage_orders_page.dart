import 'package:flutter/material.dart';
import 'package:letsscan/core/app_export.dart';
import 'package:letsscan/widgets/app_bar/appbar_circleimage.dart';
import 'package:letsscan/widgets/app_bar/appbar_image.dart';
import 'package:letsscan/widgets/app_bar/appbar_subtitle.dart';
import 'package:letsscan/widgets/app_bar/custom_app_bar.dart';
import 'package:letsscan/widgets/custom_button.dart';

class ManageOrdersPage extends StatelessWidget {
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
                    onTap: () => onTapArrowleft4(context)),
                title: AppbarSubtitle(
                    text: "Manage Order(s)", margin: getMargin(left: 15)),
                actions: [
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgEllipse4,
                      margin:
                          getMargin(left: 16, top: 23, right: 16, bottom: 23),
                      onTap: () => onTapEllipseFour1(context))
                ],
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 20, right: 16, bottom: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 16, top: 14, right: 16, bottom: 14),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL12),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 5, bottom: 4),
                                                  child: Text(
                                                      "Order ID #VH-20230110",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRomanRegular10)),
                                              Container(
                                                  width: getHorizontalSize(71),
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 2,
                                                      right: 8,
                                                      bottom: 2),
                                                  decoration: AppDecoration
                                                      .txtFillAmber50033
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder11),
                                                  child: Text("Processing",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular10))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 8),
                                        child: Text(
                                            "Pack of 2 (front & side/rear) Vehicall Smart Car Parking Tags with 1 year unlimited access",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanSemiBold14Bluegray900)),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Quantity : 1",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRomanSemiBold12Gray70001),
                                              RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "Order Date : ",
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .gray70001,
                                                            fontSize:
                                                                getFontSize(12),
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                    TextSpan(
                                                        text: "14-July-2022",
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .gray70001,
                                                            fontSize:
                                                                getFontSize(12),
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600))
                                                  ]),
                                                  textAlign: TextAlign.left)
                                            ]))
                                  ]))),
                      Container(
                          padding: getPadding(
                              left: 10, top: 7, right: 10, bottom: 7),
                          decoration: AppDecoration.outlineGray300,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2, bottom: 3),
                                    child: Text("₹",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium20)),
                                Padding(
                                    padding: getPadding(left: 1),
                                    child: Text("588",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold20)),
                                Spacer(),
                                CustomButton(
                                    height: getVerticalSize(26),
                                    width: getHorizontalSize(78),
                                    text: "Invoice",
                                    margin: getMargin(top: 2, bottom: 2),
                                    variant: ButtonVariant.Cta,
                                    shape: ButtonShape.RoundedBorder5,
                                    padding: ButtonPadding.PaddingT5,
                                    fontStyle:
                                        ButtonFontStyle.MontserratRomanMedium12,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 4),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgDownload)))
                              ])),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 12),
                              padding: getPadding(
                                  left: 16, top: 14, right: 16, bottom: 14),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL12),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 5, bottom: 4),
                                                  child: Text(
                                                      "Order ID #VH-20230110",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRomanRegular10)),
                                              CustomButton(
                                                  height: getVerticalSize(23),
                                                  width: getHorizontalSize(58),
                                                  text: "Success",
                                                  variant: ButtonVariant
                                                      .FillTeal70033,
                                                  shape: ButtonShape
                                                      .RoundedBorder11,
                                                  padding:
                                                      ButtonPadding.PaddingAll4,
                                                  fontStyle: ButtonFontStyle
                                                      .PoppinsRegular10)
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 7),
                                        child: Text("Not Provide",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanSemiBold14Bluegray900)),
                                    Padding(
                                        padding: getPadding(top: 8),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Quantity : 1",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRomanSemiBold12Gray70001),
                                              RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "Order Date : ",
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .gray70001,
                                                            fontSize:
                                                                getFontSize(12),
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                    TextSpan(
                                                        text: "14-July-2022",
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .gray70001,
                                                            fontSize:
                                                                getFontSize(12),
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600))
                                                  ]),
                                                  textAlign: TextAlign.left)
                                            ]))
                                  ]))),
                      Container(
                          padding: getPadding(
                              left: 10, top: 7, right: 10, bottom: 7),
                          decoration: AppDecoration.outlineGray300,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2, bottom: 3),
                                    child: Text("₹",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium20)),
                                Padding(
                                    padding: getPadding(left: 1),
                                    child: Text("588",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold20)),
                                Spacer(),
                                CustomButton(
                                    height: getVerticalSize(26),
                                    width: getHorizontalSize(78),
                                    text: "Invoice",
                                    margin: getMargin(top: 2, bottom: 2),
                                    variant: ButtonVariant.Cta,
                                    shape: ButtonShape.RoundedBorder5,
                                    padding: ButtonPadding.PaddingT5,
                                    fontStyle:
                                        ButtonFontStyle.MontserratRomanMedium12,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 4),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgDownload)))
                              ])),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 12),
                              padding: getPadding(
                                  left: 16, top: 14, right: 16, bottom: 14),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL12),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 5, bottom: 4),
                                                  child: Text(
                                                      "Order ID #VH-20230110",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRomanRegular10)),
                                              CustomButton(
                                                  height: getVerticalSize(23),
                                                  width: getHorizontalSize(46),
                                                  text: "Failed",
                                                  variant: ButtonVariant
                                                      .FillRed60033,
                                                  shape: ButtonShape
                                                      .RoundedBorder11,
                                                  padding:
                                                      ButtonPadding.PaddingAll4,
                                                  fontStyle: ButtonFontStyle
                                                      .PoppinsRegular10Red600cc)
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 7),
                                        child: Text("Not Provide",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanSemiBold14Bluegray900)),
                                    Padding(
                                        padding: getPadding(top: 8),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Quantity : 1",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRomanSemiBold12Gray70001),
                                              RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "Order Date : ",
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .gray70001,
                                                            fontSize:
                                                                getFontSize(12),
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                    TextSpan(
                                                        text: "14-July-2022",
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .gray70001,
                                                            fontSize:
                                                                getFontSize(12),
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600))
                                                  ]),
                                                  textAlign: TextAlign.left)
                                            ]))
                                  ]))),
                      Container(
                          margin: getMargin(bottom: 5),
                          padding: getPadding(
                              left: 10, top: 7, right: 10, bottom: 7),
                          decoration: AppDecoration.outlineGray300,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2, bottom: 3),
                                    child: Text("₹",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium20)),
                                Padding(
                                    padding: getPadding(left: 1),
                                    child: Text("588",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold20)),
                                Spacer(),
                                CustomButton(
                                    height: getVerticalSize(26),
                                    width: getHorizontalSize(78),
                                    text: "Invoice",
                                    margin: getMargin(top: 2, bottom: 2),
                                    variant: ButtonVariant.Cta,
                                    shape: ButtonShape.RoundedBorder5,
                                    padding: ButtonPadding.PaddingT5,
                                    fontStyle:
                                        ButtonFontStyle.MontserratRomanMedium12,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 4),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgDownload)))
                              ]))
                    ]))));
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }

  onTapEllipseFour1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.manageProfileScreen);
  }
}
