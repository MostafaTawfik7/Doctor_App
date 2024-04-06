import 'package:doctor_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.w700, color: Colors.black);
  static TextStyle font32Blue700Weight = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w700,
      color: ColorsManager.primaryColor);
  static TextStyle font10Grey400Weight = TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.w400,
      color: ColorsManager.textGray);
  static TextStyle font16White600Weight = TextStyle(
      fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.white);
}
