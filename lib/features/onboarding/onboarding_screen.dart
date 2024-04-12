import 'package:doctor_app/core/theme/styles.dart';
import 'package:doctor_app/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doctor_app/features/onboarding/widgets/get_started_button.dart';
import 'package:doctor_app/features/onboarding/widgets/logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: Column(
            children: [
              const LogoAndNameWidget(),
              SizedBox(height: 30.h),
              const DoctorImageAndText(),
              Text(
                'Manage and schedule all of your medical appointments easily\nwith Docdoc to get a new experience.',
                style: TextStyles.font10GrayRegular,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 32.h),
                child: const GetStartedButton(),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
