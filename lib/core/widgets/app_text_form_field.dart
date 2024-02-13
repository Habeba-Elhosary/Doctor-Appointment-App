import 'package:doctor_appointment_app/core/theming/colors.dart';
import 'package:doctor_appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.backgroundColor,
      this.controller,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(color: ColorsManager.blue, width: 1.3.w),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide:
                  BorderSide(color: ColorsManager.lighterGray, width: 1.3.w),
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
        ),
        hintStyle: hintStyle ?? TextStyles.font14LighterGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: backgroundColor ?? ColorsManager.lightestGray,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
