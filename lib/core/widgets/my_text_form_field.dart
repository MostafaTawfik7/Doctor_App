import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    this.contentPadding,
    this.isSecure,
    required this.hintText,
    this.hintStyle,
    this.inputDecoration,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.keyboardType,
    this.textInputAction,
    this.fillColor,
  });

  final EdgeInsetsGeometry? contentPadding;
  final bool? isSecure;
  final String? hintText;
  final TextStyle? hintStyle;
  final InputDecoration? inputDecoration;
  final OutlineInputBorder? focusedBorder;
  final OutlineInputBorder? enabledBorder;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        enabledBorder: enabledBorder ??
            const OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorsManager.lighterGray, width: 1.3),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
        focusedBorder: focusedBorder ??
            const OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        fillColor: fillColor ?? ColorsManager.moreLightGray,
        filled: true,
        suffixIcon: suffixIcon,
      ),
      style: TextStyles.font14DarkBlueMedium,
      keyboardType: keyboardType ?? TextInputType.text,
      textInputAction: textInputAction ?? TextInputAction.next,
      obscureText: isSecure ?? false,
    );
  }
}
