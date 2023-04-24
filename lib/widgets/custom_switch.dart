import 'package:flutter/material.dart';
import 'package:letsscan/core/app_export.dart';

import '../core/utils/color_constant.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Switch(
        value: value ?? false,
        inactiveTrackColor: ColorConstant.tealA700,
        activeTrackColor: ColorConstant.tealA700,
        inactiveThumbColor: ColorConstant.whiteA700,
        activeColor: ColorConstant.whiteA700,
        onChanged: (value) {},
      ),
    );
  }
}
