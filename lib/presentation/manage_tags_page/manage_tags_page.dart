import 'package:flutter/material.dart';
import 'package:letsscan/core/app_export.dart';
import 'package:letsscan/widgets/app_bar/appbar_circleimage.dart';
import 'package:letsscan/widgets/app_bar/appbar_image.dart';
import 'package:letsscan/widgets/app_bar/appbar_subtitle.dart';
import 'package:letsscan/widgets/app_bar/custom_app_bar.dart';
import 'package:letsscan/widgets/custom_button.dart';
import 'package:letsscan/widgets/custom_checkbox.dart';
import 'package:letsscan/widgets/custom_switch.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ManageTagsPage extends StatelessWidget {
  bool checkbox = false;

  bool checkbox1 = false;

  bool checkbox2 = false;

  bool checkbox3 = false;

  bool checkbox4 = false;

  bool checkbox5 = false;

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
                    onTap: () => onTapArrowleft5(context)),
                title: AppbarSubtitle(
                    text: "Manage Tags", margin: getMargin(left: 15)),
                actions: [
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgEllipse4,
                      margin:
                          getMargin(left: 16, top: 23, right: 16, bottom: 23),
                      onTap: () => onTapEllipseFour3(context))
                ],
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 20, right: 16, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
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
                            ]))))));
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }

  onTapEllipseFour3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.manageProfileScreen);
  }
}
