import 'package:flutter/material.dart';
import 'package:letsscan/core/app_export.dart';
import 'package:letsscan/core/utils/validation_functions.dart';
import 'package:letsscan/widgets/app_bar/appbar_image.dart';
import 'package:letsscan/widgets/app_bar/appbar_subtitle.dart';
import 'package:letsscan/widgets/app_bar/custom_app_bar.dart';
import 'package:letsscan/widgets/custom_button.dart';
import 'package:letsscan/widgets/custom_drop_down.dart';
import 'package:letsscan/widgets/custom_icon_button.dart';
import 'package:letsscan/widgets/custom_radio_button.dart';
import 'package:letsscan/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EditProfilePage extends StatelessWidget {
  TextEditingController wraplerController = TextEditingController();

  String radioGroup = "";

  List<String> radioList = ["lbl_male", "lbl_female"];

  TextEditingController wraplerOneController = TextEditingController();

  TextEditingController wraplerTwoController = TextEditingController();

  TextEditingController wraplerThreeController = TextEditingController();

  TextEditingController wraplerFourController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController wraplerFiveController = TextEditingController();

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
                    margin: getMargin(left: 16, top: 39, bottom: 38),
                    onTap: () => onTapArrowleft2(context)),
                centerTitle: true,
                title: AppbarSubtitle(text: "Profile"),
                styleType: Style.bgFillWhiteA700),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 20, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getSize(80),
                                      width: getSize(80),
                                      child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgEllipse480x80,
                                                height: getSize(80),
                                                width: getSize(80),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(40)),
                                                alignment: Alignment.center),
                                            CustomIconButton(
                                                height: 26,
                                                width: 25,
                                                variant: IconButtonVariant
                                                    .FillWhiteA700,
                                                padding: IconButtonPadding
                                                    .PaddingAll6,
                                                alignment: Alignment.topRight,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCameraIndigo900))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 31),
                                  child: Text("Name",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratRegular10)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: wraplerController,
                                  hintText: "Enter name",
                                  margin: getMargin(top: 5)),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Text("Gender",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratRegular10)),
                              Padding(
                                  padding: getPadding(top: 6),
                                  child: Row(children: [
                                    CustomRadioButton(
                                        width: getHorizontalSize(81),
                                        text: "Male",
                                        iconSize: getHorizontalSize(20),
                                        value: radioList[0],
                                        groupValue: radioGroup,
                                        variant: RadioVariant.FillWhiteA700,
                                        shape: RadioShape.RoundedBorder5,
                                        padding: RadioPadding.PaddingAll8,
                                        fontStyle:
                                            RadioFontStyle.PoppinsRegular12,
                                        onChange: (value) {
                                          radioGroup = value;
                                        }),
                                    CustomRadioButton(
                                        width: getHorizontalSize(97),
                                        text: "Female",
                                        value: radioList[1],
                                        groupValue: radioGroup,
                                        margin: getMargin(left: 15),
                                        variant: RadioVariant.FillWhiteA700,
                                        shape: RadioShape.RoundedBorder5,
                                        padding: RadioPadding.PaddingAll8,
                                        fontStyle:
                                            RadioFontStyle.PoppinsRegular12,
                                        onChange: (value) {
                                          radioGroup = value;
                                        })
                                  ])),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Text("Mobile Number",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratRegular10)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: wraplerOneController,
                                  hintText: "Enter Number",
                                  margin: getMargin(top: 6),
                                  textInputType: TextInputType.number),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Text("Email",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratRegular10)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: wraplerTwoController,
                                  hintText: "Enter email",
                                  margin: getMargin(top: 6),
                                  textInputType: TextInputType.emailAddress),
                              Padding(
                                  padding: getPadding(top: 15),
                                  child: Text("Delivery Address",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratRegular10)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: wraplerThreeController,
                                  hintText: "Enter delivery address",
                                  margin: getMargin(top: 5)),
                              Padding(
                                  padding: getPadding(top: 15),
                                  child: Text("City",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratRegular10)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: wraplerFourController,
                                  hintText: "Enter city",
                                  margin: getMargin(top: 5)),
                              Padding(
                                  padding: getPadding(top: 15),
                                  child: Text("City",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratRegular10)),
                              CustomDropDown(
                                  focusNode: FocusNode(),
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 12),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgArrowdown)),
                                  hintText: "Delhi",
                                  margin: getMargin(top: 5),
                                  items: dropdownItemList,
                                  onChanged: (value) {}),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Text("Pincode",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratRegular10)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: wraplerFiveController,
                                  hintText: "Enter pin-code",
                                  margin: getMargin(top: 6),
                                  textInputAction: TextInputAction.done),
                              CustomButton(
                                  height: getVerticalSize(33),
                                  width: getHorizontalSize(86),
                                  text: "Update",
                                  margin: getMargin(top: 24),
                                  variant: ButtonVariant.FillRed600,
                                  shape: ButtonShape.RoundedBorder5,
                                  fontStyle:
                                      ButtonFontStyle.MontserratRomanSemiBold14,
                                  onTap: () => onTapUpdate(context))
                            ]))))));
  }

  onTapUpdate(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.manageProfileScreen);
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
