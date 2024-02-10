import 'package:doctor_appointment_app/core/helpers/spacing.dart';
import 'package:doctor_appointment_app/core/theming/colors.dart';
import 'package:doctor_appointment_app/core/theming/styles.dart';
import 'package:doctor_appointment_app/core/widgets/app_text_button.dart';
import 'package:doctor_appointment_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_appointment_app/features/login/ui/widgets/accounts_for_sign_up.dart';
import 'package:doctor_appointment_app/features/login/ui/widgets/already_have_account_text.dart';
import 'package:doctor_appointment_app/features/login/ui/widgets/or_sign_in_with_widget.dart';
import 'package:doctor_appointment_app/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: TextStyles.font24BlueBold),
                verticalSpacing(8),
                Text(
                  "We're excited to have you back, can't wait to\nsee what you've been up to since you last \nlogged in.",
                  style: TextStyles.font14GrayRegular.copyWith(height: 1.5.h),
                ),
                verticalSpacing(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(
                        hintText: 'Email',
                      ),
                      verticalSpacing(18),
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                      verticalSpacing(24),
                      Row(
                        children: [
                          Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Row(
                              children: [
                                Checkbox(
                                  value: false,
                                  onChanged: (value) {},
                                  activeColor: ColorsManager.blue,
                                  side: const BorderSide(
                                    width: 2,
                                    color: ColorsManager.gray,
                                  ),
                                  checkColor: ColorsManager.white,
                                ),
                                Text(
                                  'Remember me',
                                  style: TextStyles.font13GrayRegular,
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              'Forgot Password?',
                              style: TextStyles.font13BlueRegular,
                            ),
                          ),
                        ],
                      ),
                      verticalSpacing(20),
                      AppTextButton(
                        buttonText: "Login",
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {},
                      ),
                      verticalSpacing(35),
                      const OrSignInWith(),
                      verticalSpacing(25),
                      const AccountsForSignUp(),
                      verticalSpacing(40),
                      const TermsAndConditionsText(),
                      verticalSpacing(30),
                      const AlreadyHaveAccountText(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
