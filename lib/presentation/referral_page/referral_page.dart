import 'package:flutter/material.dart';
import 'package:letsscan/core/app_export.dart';
import 'package:letsscan/core/utils/validation_functions.dart';
import 'package:letsscan/widgets/app_bar/appbar_circleimage.dart';
import 'package:letsscan/widgets/app_bar/appbar_image.dart';
import 'package:letsscan/widgets/app_bar/appbar_subtitle.dart';
import 'package:letsscan/widgets/app_bar/custom_app_bar.dart';
import 'package:letsscan/widgets/custom_button.dart';
import 'package:letsscan/widgets/custom_checkbox.dart';
import 'package:letsscan/widgets/custom_icon_button.dart';
import 'package:letsscan/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ReferralPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  bool checkbox = false;

  bool checkbox1 = false;

  bool checkbox2 = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray5001,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(91),
                leadingWidth: 22,
                leading: AppbarImage(
                    height: getVerticalSize(13),
                    width: getHorizontalSize(6),
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 16, top: 39, bottom: 39),
                    onTap: () => onTapArrowleft(context)),
                title: AppbarSubtitle(
                    text: "Referral", margin: getMargin(left: 15)),
                actions: [
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgEllipse4,
                      margin:
                          getMargin(left: 16, top: 23, right: 16, bottom: 23),
                      onTap: () => onTapEllipseFour(context))
                ],
                styleType: Style.bgFillWhiteA700),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 19, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("Your Referral Link",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratRomanSemiBold16)),
                              Container(
                                  margin: getMargin(top: 14),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder3),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtInputtext(context);
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 15,
                                                    top: 13,
                                                    bottom: 13),
                                                child: Text(
                                                    "http://www.vehicall.in/order.php?ref=445566",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRegular10
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline)))),
                                        CustomButton(
                                            height: getVerticalSize(40),
                                            width: getHorizontalSize(62),
                                            text: "Copy",
                                            variant:
                                                ButtonVariant.FillWhiteA700,
                                            shape: ButtonShape.RoundedBorder5,
                                            padding: ButtonPadding.PaddingAll11,
                                            fontStyle: ButtonFontStyle
                                                .MontserratRomanSemiBold10)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 31),
                                  child: Text("Invite by email",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratRegular10)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: emailController,
                                  hintText: "user@gmail.com",
                                  margin: getMargin(top: 5),
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.emailAddress),
                              CustomButton(
                                  height: getVerticalSize(31),
                                  width: getHorizontalSize(64),
                                  text: "Send",
                                  margin: getMargin(top: 16),
                                  variant: ButtonVariant.Cta,
                                  shape: ButtonShape.RoundedBorder5,
                                  fontStyle: ButtonFontStyle
                                      .MontserratRomanSemiBold12),
                              Container(
                                  height: getVerticalSize(15),
                                  width: getHorizontalSize(328),
                                  margin: getMargin(top: 29),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                                width: getHorizontalSize(328),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: ColorConstant
                                                        .black90033))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(15),
                                                width: getHorizontalSize(95),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      15),
                                                              width:
                                                                  getHorizontalSize(
                                                                      95),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .blueGray5001))),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                              "Or Share via",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRomanSemiBold12Gray400))
                                                    ])))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 30),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomIconButton(
                                                height: 40,
                                                width: 40,
                                                onTap: () {
                                                  onTapBtnFacebook(context);
                                                },
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFacebook)),
                                            CustomIconButton(
                                                height: 40,
                                                width: 40,
                                                margin: getMargin(left: 20),
                                                onTap: () {
                                                  onTapBtnTwitter(context);
                                                },
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgTwitter)),
                                            CustomIconButton(
                                                height: 40,
                                                width: 40,
                                                margin: getMargin(left: 20),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgLinkedin)),
                                            CustomIconButton(
                                                height: 40,
                                                width: 40,
                                                margin: getMargin(left: 20),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCamera))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 30),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.black90033)),
                              Container(
                                  margin: getMargin(top: 29),
                                  padding: getPadding(
                                      left: 10, top: 3, right: 10, bottom: 3),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder3),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(100),
                                            margin: getMargin(top: 1),
                                            child: Text(
                                                "Referral Earning\n 32 Days",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanSemiBold14Black900)),
                                        Container(
                                            width: getHorizontalSize(102),
                                            margin:
                                                getMargin(top: 1, bottom: 2),
                                            child: Text("Friends Referred\n2",
                                                maxLines: null,
                                                textAlign: TextAlign.right,
                                                style: AppStyle
                                                    .txtMontserratRomanSemiBold14Black900))
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      width: getHorizontalSize(328),
                                      margin: getMargin(top: 13),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "S.No : ",
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .gray70001,
                                                              fontSize:
                                                                  getFontSize(
                                                                      10),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                      TextSpan(
                                                          text: "1",
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .black900,
                                                              fontSize:
                                                                  getFontSize(
                                                                      10),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600))
                                                    ]),
                                                    textAlign: TextAlign.left)),
                                            Padding(
                                                padding: getPadding(top: 6),
                                                child: Text("Kamal 2",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRomanSemiBold14Bluegray900)),
                                            Padding(
                                                padding: getPadding(top: 11),
                                                child: Text("Benefit : 20 Days",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRomanSemiBold12Gray70001))
                                          ]))),
                              Container(
                                  padding: getPadding(
                                      left: 10, top: 8, right: 10, bottom: 8),
                                  decoration: AppDecoration.outlineGray300,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomCheckbox(
                                            text: "01-Jul-2023",
                                            value: checkbox,
                                            margin:
                                                getMargin(top: 5, bottom: 5),
                                            fontStyle:
                                                CheckboxFontStyle.InterMedium13,
                                            onChange: (value) {
                                              checkbox = value;
                                            }),
                                        CustomButton(
                                            height: getVerticalSize(27),
                                            width: getHorizontalSize(64),
                                            text: "Claimed",
                                            variant:
                                                ButtonVariant.FillTeal700cc,
                                            shape: ButtonShape.RoundedBorder5,
                                            fontStyle: ButtonFontStyle
                                                .MontserratRomanSemiBold12WhiteA700)
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      width: getHorizontalSize(328),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "S.No : ",
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .gray70001,
                                                              fontSize:
                                                                  getFontSize(
                                                                      10),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                      TextSpan(
                                                          text: "1",
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .black900,
                                                              fontSize:
                                                                  getFontSize(
                                                                      10),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600))
                                                    ]),
                                                    textAlign: TextAlign.left)),
                                            Padding(
                                                padding: getPadding(top: 6),
                                                child: Text("Kamal 2",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRomanSemiBold14Bluegray900)),
                                            Padding(
                                                padding: getPadding(top: 11),
                                                child: Text("Benefit : 20 Days",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRomanSemiBold12Gray70001))
                                          ]))),
                              Container(
                                  padding: getPadding(
                                      left: 10, top: 8, right: 10, bottom: 8),
                                  decoration: AppDecoration.outlineGray300,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomCheckbox(
                                            text: "01-Jul-2023",
                                            value: checkbox1,
                                            margin:
                                                getMargin(top: 5, bottom: 5),
                                            fontStyle:
                                                CheckboxFontStyle.InterMedium13,
                                            onChange: (value) {
                                              checkbox1 = value;
                                            }),
                                        CustomButton(
                                            height: getVerticalSize(27),
                                            width: getHorizontalSize(48),
                                            text: "Claim",
                                            variant: ButtonVariant.Primary,
                                            shape: ButtonShape.RoundedBorder5,
                                            fontStyle: ButtonFontStyle
                                                .MontserratRomanSemiBold12WhiteA700)
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      width: getHorizontalSize(328),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "S.No : ",
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .gray70001,
                                                              fontSize:
                                                                  getFontSize(
                                                                      10),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                      TextSpan(
                                                          text: "1",
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .black900,
                                                              fontSize:
                                                                  getFontSize(
                                                                      10),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600))
                                                    ]),
                                                    textAlign: TextAlign.left)),
                                            Padding(
                                                padding: getPadding(top: 6),
                                                child: Text("Kamal 2",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRomanSemiBold14Bluegray900)),
                                            Padding(
                                                padding: getPadding(top: 11),
                                                child: Text("Benefit : 20 Days",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratRomanSemiBold12Gray70001))
                                          ]))),
                              Container(
                                  padding: getPadding(
                                      left: 10, top: 8, right: 10, bottom: 8),
                                  decoration: AppDecoration.outlineGray300,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomCheckbox(
                                            text: "01-Jul-2023",
                                            value: checkbox2,
                                            margin:
                                                getMargin(top: 5, bottom: 5),
                                            fontStyle:
                                                CheckboxFontStyle.InterMedium13,
                                            onChange: (value) {
                                              checkbox2 = value;
                                            }),
                                        CustomButton(
                                            height: getVerticalSize(27),
                                            width: getHorizontalSize(60),
                                            text: "Expired",
                                            shape: ButtonShape.RoundedBorder5,
                                            fontStyle: ButtonFontStyle
                                                .MontserratRomanSemiBold12WhiteA700)
                                      ]))
                            ]))))));
  }

  onTapTxtInputtext(BuildContext context) async {
    var url = 'http://www.vehicall.in/order.php?ref=445566';
    if (!await launch(url)) {
      throw 'Could not launch http://www.vehicall.in/order.php?ref=445566';
    }
  }

  onTapBtnFacebook(BuildContext context) async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapBtnTwitter(BuildContext context) async {
    var url = 'https://twitter.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://twitter.com/login/';
    }
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapEllipseFour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.manageProfileScreen);
  }
}
