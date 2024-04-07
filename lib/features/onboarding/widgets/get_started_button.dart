import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.go(Routes.homeScreen);
      },
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(ColorsManager.primaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          minimumSize:
              MaterialStateProperty.all(const Size(double.infinity, 52)),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
      child: Text('Get Started', style: TextStyles.font16White600Weight),
    );
  }
}
