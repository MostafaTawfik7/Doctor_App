import 'package:doctor_app/core/constants/assets_manager.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LogoAndNameWidget extends StatelessWidget {
  const LogoAndNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SvgPicture.asset(Assets.assetsSvgsLogo),
      SizedBox(width: 10.w),
      Text('Docdoc', style: TextStyles.font24Black700Weight),
    ]);
  }
}
