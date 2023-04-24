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
import 'package:letsscan/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ManageProfileScreen extends StatelessWidget {
  TextEditingController editprofileController = TextEditingController();

  TextEditingController referralearningController = TextEditingController();

  TextEditingController faqController = TextEditingController();

  TextEditingController settingsController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
                    onTap: () => onTapArrowleft3(context)),
                title: AppbarSubtitle(
                    text: "Manage Profile", margin: getMargin(left: 15)),
                actions: [
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgEllipse4,
                      margin:
                          getMargin(left: 16, top: 23, right: 16, bottom: 23))
                ],
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 20, right: 16, bottom: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: editprofileController,
                          hintText: "Edit Profile",
                          variant: TextFormFieldVariant.OutlineGray300,
                          padding: TextFormFieldPadding.PaddingT16,
                          fontStyle: TextFormFieldFontStyle.PoppinsMedium14,
                          prefix: Container(
                              margin: getMargin(
                                  left: 20, top: 18, right: 18, bottom: 18),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgUserIndigo90018x18)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(54))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: referralearningController,
                          hintText: "Referral Earning",
                          margin: getMargin(top: 12),
                          variant: TextFormFieldVariant.OutlineGray300,
                          padding: TextFormFieldPadding.PaddingT16,
                          fontStyle: TextFormFieldFontStyle.PoppinsMedium14,
                          prefix: Container(
                              margin: getMargin(
                                  left: 20, top: 18, right: 18, bottom: 18),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgUser18x18)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(54))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: faqController,
                          hintText: "Faq",
                          margin: getMargin(top: 12),
                          variant: TextFormFieldVariant.OutlineGray300,
                          padding: TextFormFieldPadding.PaddingT16,
                          fontStyle: TextFormFieldFontStyle.PoppinsMedium14,
                          prefix: Container(
                              margin: getMargin(
                                  left: 20, top: 18, right: 18, bottom: 18),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgQuestion)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(54))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: settingsController,
                          hintText: "Settings",
                          margin: getMargin(top: 12),
                          variant: TextFormFieldVariant.OutlineGray300,
                          padding: TextFormFieldPadding.PaddingT16,
                          fontStyle: TextFormFieldFontStyle.PoppinsMedium14,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 20, top: 18, right: 18, bottom: 18),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSettingsIndigo900)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(54))),
                      Container(
                          margin: getMargin(top: 12, bottom: 5),
                          padding: getPadding(
                              left: 10, top: 8, right: 10, bottom: 8),
                          decoration: AppDecoration.outlineGray300,
                          child: Row(children: [
                            Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: ColorConstant.blueGray5001,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(8))),
                                child: Container(
                                    height: getSize(38),
                                    width: getSize(38),
                                    padding: getPadding(all: 10),
                                    decoration: AppDecoration.fillBluegray5001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder6),
                                    child: Stack(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowrightIndigo900,
                                          height: getSize(18),
                                          width: getSize(18),
                                          alignment: Alignment.center)
                                    ]))),
                            Padding(
                                padding: getPadding(left: 8, top: 9, bottom: 7),
                                child: Text("Sign Out",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium14))
                          ]))
                    ])),
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

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
