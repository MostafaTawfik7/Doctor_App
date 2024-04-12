import 'package:doctor_app/core/helpers/space.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:doctor_app/core/widgets/my_text_button.dart';
import 'package:doctor_app/core/widgets/my_text_form_field.dart';
import 'package:doctor_app/features/login/ui/widgets/already_have_account_text.dart';
import 'package:doctor_app/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isSecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Form(
                  child: Column(
                    children: [
                      const MyTextFormField(
                        hintText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),
                      verticalSpace(18),
                      MyTextFormField(
                        hintText: 'Password',
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        isSecure: isSecure,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isSecure = !isSecure;
                            });
                          },
                          child: isSecure
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
                        ),
                      ),
                      verticalSpace(24),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forget Password?',
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                        buttonText: 'Login',
                        onPressed: () {},
                        textStyle: TextStyles.font16WhiteSemiBold,
                      ),
                      verticalSpace(16),
                      const TermsAndConditionsText(),
                      verticalSpace(60),
                      const AlreadyHaveAccountText()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
