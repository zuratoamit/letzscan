import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:letsscan/core/app_export.dart';
import 'package:letsscan/core/utils/validation_functions.dart';
import 'package:letsscan/widgets/custom_text_form_field.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';
import '../theme/app_style.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber(
      {required this.country, required this.onTap, required this.controller});

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10,
          ),
        ),
        border: Border.all(
          color: ColorConstant.gray500,
          width: getHorizontalSize(
            1,
          ),
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Padding(
              padding: getPadding(
                left: 10,
                top: 8,
                bottom: 8,
              ),
              child: Row(
                children: [
                  Container(
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          3,
                        ),
                      ),
                      child: CountryPickerUtils.getDefaultFlagImage(
                        country,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 10,
                      top: 2,
                      bottom: 1,
                    ),
                    child: Text(
                      "+${country.phoneCode}",
                      style: AppStyle.txtMontserratMedium16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: getVerticalSize(
              29,
            ),
            width: getHorizontalSize(
              1,
            ),
            margin: getMargin(
              left: 11,
              top: 5,
              bottom: 5,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray500,
            ),
          ),
          Expanded(
            child: CustomTextFormField(
              width: getHorizontalSize(
                226,
              ),
              focusNode: FocusNode(),
              controller: controller,
              hintText: "Mobile Number",
              margin: getMargin(
                left: 15,
                right: 6,
              ),
              variant: TextFormFieldVariant.None,
              textInputType: TextInputType.phone,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: getHorizontalSize(10),
            ),
            width: getHorizontalSize(60.0),
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: getFontSize(14)),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: getFontSize(14))),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
