import 'package:flutter/material.dart';
import 'package:letsscan/core/app_export.dart';
import 'package:letsscan/presentation/edit_profile_page/edit_profile_page.dart';
import 'package:letsscan/presentation/manage_orders_page/manage_orders_page.dart';
import 'package:letsscan/presentation/manage_tags_page/manage_tags_page.dart';
import 'package:letsscan/presentation/referral_page/referral_page.dart';
import 'package:letsscan/widgets/app_bar/appbar_circleimage.dart';
import 'package:letsscan/widgets/app_bar/custom_app_bar.dart';
import 'package:letsscan/widgets/custom_bottom_bar.dart';
import 'package:letsscan/widgets/custom_button.dart';
import 'package:letsscan/widgets/custom_checkbox.dart';
import 'package:letsscan/widgets/custom_switch.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class DashboardScreen extends StatelessWidget {
  bool checkbox = false;

  bool checkbox1 = false;

  bool checkbox2 = false;

  bool checkbox3 = false;

  bool checkbox4 = false;

  bool checkbox5 = false;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray5001,
            appBar: CustomAppBar(
                height: getVerticalSize(91),
                title: Padding(
                    padding: getPadding(left: 17),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(right: 60),
                                  child: Text("Good Morning",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratRomanSemiBold14Black9001))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 2),
                                  child: Text("Pukanshu Kumar",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtMontserratRomanBold18)))
                        ])),
                actions: [
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgEllipse4,
                      margin:
                          getMargin(left: 16, top: 25, right: 16, bottom: 21),
                      onTap: () => onTapEllipseFour2(context))
                ],
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 22, right: 16, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  margin: getMargin(left: 36, right: 36),
                                  padding: getPadding(
                                      left: 6, top: 5, right: 6, bottom: 5),
                                  decoration: AppDecoration.fillIndigo90019
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder22),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomButton(
                                            height: getVerticalSize(33),
                                            width: getHorizontalSize(111),
                                            text: "Active Tags",
                                            variant:
                                                ButtonVariant.FillWhiteA700,
                                            fontStyle: ButtonFontStyle
                                                .MontserratRomanMedium14),
                                        Padding(
                                            padding: getPadding(
                                                left: 25,
                                                top: 9,
                                                right: 15,
                                                bottom: 5),
                                            child: Text("Inactive Tags",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanMedium14))
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 17),
                                      padding: getPadding(
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                          bottom: 14),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL12),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("# 10010126",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratRomanRegular10),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 8),
                                                                child: Text(
                                                                    "MP04QT0355",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratRomanSemiBold16Bluegray900))
                                                          ]),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  34),
                                                          width:
                                                              getHorizontalSize(
                                                                  82),
                                                          text: "ACTIVE",
                                                          margin: getMargin(
                                                              bottom: 7),
                                                          variant: ButtonVariant
                                                              .FillBlue100)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 6),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text(
                                                              "+91 9876543210",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRomanSemiBold12Gray70001)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "Access Up to: ",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray70001,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text:
                                                                            "03-Apr-2024",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray70001,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w600))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))
                                                    ]))
                                          ]))),
                              Container(
                                  padding: getPadding(top: 8, bottom: 8),
                                  decoration: AppDecoration.outlineGray300,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CustomCheckbox(
                                            text: "03-Apr-2023",
                                            value: checkbox,
                                            margin:
                                                getMargin(top: 6, bottom: 4),
                                            fontStyle:
                                                CheckboxFontStyle.InterMedium13,
                                            onChange: (value) {
                                              checkbox = value;
                                            }),
                                        CustomSwitch(
                                            margin:
                                                getMargin(top: 4, bottom: 4),
                                            value: true,
                                            onChanged: (value) {}),
                                        Padding(
                                            padding:
                                                getPadding(top: 6, bottom: 5),
                                            child: Text("Stationed",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterMedium13)),
                                        CustomButton(
                                            height: getVerticalSize(28),
                                            width: getHorizontalSize(68),
                                            text: "Pause",
                                            shape: ButtonShape.RoundedBorder8,
                                            padding: ButtonPadding.PaddingT5,
                                            fontStyle: ButtonFontStyle
                                                .MontserratRomanMedium12WhiteA700,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 4),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgTrash)))
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 12),
                                      padding: getPadding(
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                          bottom: 14),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL12),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("# 10010126",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratRomanRegular10),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 8),
                                                                child: Text(
                                                                    "MP04QT0355",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratRomanSemiBold16Bluegray900))
                                                          ]),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  34),
                                                          width:
                                                              getHorizontalSize(
                                                                  82),
                                                          text: "ACTIVE",
                                                          margin: getMargin(
                                                              bottom: 7),
                                                          variant: ButtonVariant
                                                              .FillBlue100)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 6),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text(
                                                              "+91 9876543210",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRomanSemiBold12Gray70001)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "Access Up to: ",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray70001,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text:
                                                                            "03-Apr-2024",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray70001,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w600))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))
                                                    ]))
                                          ]))),
                              Container(
                                  padding: getPadding(top: 8, bottom: 8),
                                  decoration: AppDecoration.outlineGray300,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CustomCheckbox(
                                            text: "03-Apr-2023",
                                            value: checkbox1,
                                            margin:
                                                getMargin(top: 6, bottom: 4),
                                            fontStyle:
                                                CheckboxFontStyle.InterMedium13,
                                            onChange: (value) {
                                              checkbox1 = value;
                                            }),
                                        CustomSwitch(
                                            margin:
                                                getMargin(top: 4, bottom: 4),
                                            value: true,
                                            onChanged: (value) {}),
                                        Padding(
                                            padding:
                                                getPadding(top: 6, bottom: 5),
                                            child: Text("Stationed",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterMedium13)),
                                        CustomButton(
                                            height: getVerticalSize(28),
                                            width: getHorizontalSize(68),
                                            text: "Pause",
                                            shape: ButtonShape.RoundedBorder8,
                                            padding: ButtonPadding.PaddingT5,
                                            fontStyle: ButtonFontStyle
                                                .MontserratRomanMedium12WhiteA700,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 4),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgTrash)))
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 12),
                                      padding: getPadding(
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                          bottom: 14),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL12),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("# 10010126",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratRomanRegular10),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 8),
                                                                child: Text(
                                                                    "MP04QT0355",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratRomanSemiBold16Bluegray900))
                                                          ]),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  34),
                                                          width:
                                                              getHorizontalSize(
                                                                  82),
                                                          text: "ACTIVE",
                                                          margin: getMargin(
                                                              bottom: 7),
                                                          variant: ButtonVariant
                                                              .FillBlue100)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 6),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text(
                                                              "+91 9876543210",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRomanSemiBold12Gray70001)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "Access Up to: ",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray70001,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text:
                                                                            "03-Apr-2024",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray70001,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w600))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))
                                                    ]))
                                          ]))),
                              Container(
                                  padding: getPadding(top: 8, bottom: 8),
                                  decoration: AppDecoration.outlineGray300,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CustomCheckbox(
                                            text: "03-Apr-2023",
                                            value: checkbox2,
                                            margin:
                                                getMargin(top: 6, bottom: 4),
                                            fontStyle:
                                                CheckboxFontStyle.InterMedium13,
                                            onChange: (value) {
                                              checkbox2 = value;
                                            }),
                                        CustomSwitch(
                                            margin:
                                                getMargin(top: 4, bottom: 4),
                                            value: true,
                                            onChanged: (value) {}),
                                        Padding(
                                            padding:
                                                getPadding(top: 6, bottom: 5),
                                            child: Text("Stationed",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterMedium13)),
                                        CustomButton(
                                            height: getVerticalSize(28),
                                            width: getHorizontalSize(68),
                                            text: "Pause",
                                            shape: ButtonShape.RoundedBorder8,
                                            padding: ButtonPadding.PaddingT5,
                                            fontStyle: ButtonFontStyle
                                                .MontserratRomanMedium12WhiteA700,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 4),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgTrash)))
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 12),
                                      padding: getPadding(
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                          bottom: 14),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL12),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("# 10010126",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratRomanRegular10),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 8),
                                                                child: Text(
                                                                    "MP04QT0355",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratRomanSemiBold16Bluegray900))
                                                          ]),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  34),
                                                          width:
                                                              getHorizontalSize(
                                                                  82),
                                                          text: "ACTIVE",
                                                          margin: getMargin(
                                                              bottom: 7),
                                                          variant: ButtonVariant
                                                              .FillBlue100)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 6),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text(
                                                              "+91 9876543210",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRomanSemiBold12Gray70001)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "Access Up to: ",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray70001,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text:
                                                                            "03-Apr-2024",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray70001,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w600))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))
                                                    ]))
                                          ]))),
                              Container(
                                  padding: getPadding(top: 8, bottom: 8),
                                  decoration: AppDecoration.outlineGray300,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CustomCheckbox(
                                            text: "03-Apr-2023",
                                            value: checkbox3,
                                            margin:
                                                getMargin(top: 6, bottom: 4),
                                            fontStyle:
                                                CheckboxFontStyle.InterMedium13,
                                            onChange: (value) {
                                              checkbox3 = value;
                                            }),
                                        CustomSwitch(
                                            margin:
                                                getMargin(top: 4, bottom: 4),
                                            value: true,
                                            onChanged: (value) {}),
                                        Padding(
                                            padding:
                                                getPadding(top: 6, bottom: 5),
                                            child: Text("Stationed",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterMedium13)),
                                        CustomButton(
                                            height: getVerticalSize(28),
                                            width: getHorizontalSize(68),
                                            text: "Pause",
                                            shape: ButtonShape.RoundedBorder8,
                                            padding: ButtonPadding.PaddingT5,
                                            fontStyle: ButtonFontStyle
                                                .MontserratRomanMedium12WhiteA700,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 4),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgTrash)))
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 12),
                                      padding: getPadding(
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                          bottom: 14),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL12),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("# 10010126",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratRomanRegular10),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 8),
                                                                child: Text(
                                                                    "MP04QT0355",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratRomanSemiBold16Bluegray900))
                                                          ]),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  34),
                                                          width:
                                                              getHorizontalSize(
                                                                  82),
                                                          text: "ACTIVE",
                                                          margin: getMargin(
                                                              bottom: 7),
                                                          variant: ButtonVariant
                                                              .FillBlue100)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 6),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text(
                                                              "+91 9876543210",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRomanSemiBold12Gray70001)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "Access Up to: ",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray70001,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text:
                                                                            "03-Apr-2024",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray70001,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w600))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))
                                                    ]))
                                          ]))),
                              Container(
                                  padding: getPadding(top: 8, bottom: 8),
                                  decoration: AppDecoration.outlineGray300,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CustomCheckbox(
                                            text: "03-Apr-2023",
                                            value: checkbox4,
                                            margin:
                                                getMargin(top: 6, bottom: 4),
                                            fontStyle:
                                                CheckboxFontStyle.InterMedium13,
                                            onChange: (value) {
                                              checkbox4 = value;
                                            }),
                                        CustomSwitch(
                                            margin:
                                                getMargin(top: 4, bottom: 4),
                                            value: true,
                                            onChanged: (value) {}),
                                        Padding(
                                            padding:
                                                getPadding(top: 6, bottom: 5),
                                            child: Text("Stationed",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterMedium13)),
                                        CustomButton(
                                            height: getVerticalSize(28),
                                            width: getHorizontalSize(68),
                                            text: "Pause",
                                            shape: ButtonShape.RoundedBorder8,
                                            padding: ButtonPadding.PaddingT5,
                                            fontStyle: ButtonFontStyle
                                                .MontserratRomanMedium12WhiteA700,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 4),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgTrash)))
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 12),
                                      padding: getPadding(
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                          bottom: 14),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL12),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("# 10010126",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratRomanRegular10),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 8),
                                                                child: Text(
                                                                    "MP04QT0355",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratRomanSemiBold16Bluegray900))
                                                          ]),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  34),
                                                          width:
                                                              getHorizontalSize(
                                                                  82),
                                                          text: "ACTIVE",
                                                          margin: getMargin(
                                                              bottom: 7),
                                                          variant: ButtonVariant
                                                              .FillBlue100)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 6),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text(
                                                              "+91 9876543210",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRomanSemiBold12Gray70001)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "Access Up to: ",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray70001,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text:
                                                                            "03-Apr-2024",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray70001,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w600))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))
                                                    ]))
                                          ]))),
                              Container(
                                  padding: getPadding(top: 8, bottom: 8),
                                  decoration: AppDecoration.outlineGray300,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CustomCheckbox(
                                            text: "03-Apr-2023",
                                            value: checkbox5,
                                            margin:
                                                getMargin(top: 6, bottom: 4),
                                            fontStyle:
                                                CheckboxFontStyle.InterMedium13,
                                            onChange: (value) {
                                              checkbox5 = value;
                                            }),
                                        CustomSwitch(
                                            margin:
                                                getMargin(top: 4, bottom: 4),
                                            value: true,
                                            onChanged: (value) {}),
                                        Padding(
                                            padding:
                                                getPadding(top: 6, bottom: 5),
                                            child: Text("Stationed",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterMedium13)),
                                        CustomButton(
                                            height: getVerticalSize(28),
                                            width: getHorizontalSize(68),
                                            text: "Pause",
                                            shape: ButtonShape.RoundedBorder8,
                                            padding: ButtonPadding.PaddingT5,
                                            fontStyle: ButtonFontStyle
                                                .MontserratRomanMedium12WhiteA700,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 4),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgTrash)))
                                      ]))
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

  onTapEllipseFour2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.manageProfileScreen);
  }
}
