import 'package:doctor_appointment_app/core/helpers/spacing.dart';
import 'package:doctor_appointment_app/core/theming/colors.dart';
import 'package:doctor_appointment_app/core/theming/styles.dart';
import 'package:doctor_appointment_app/core/widgets/app_text_button.dart';
import 'package:doctor_appointment_app/features/login/data/models/login_request_body.dart';
import 'package:doctor_appointment_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_appointment_app/features/login/ui/widgets/accounts_for_sign_up.dart';
import 'package:doctor_appointment_app/features/login/ui/widgets/already_have_account_text.dart';
import 'package:doctor_appointment_app/features/login/ui/widgets/email_and_password.dart';
import 'package:doctor_appointment_app/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:doctor_appointment_app/features/login/ui/widgets/or_sign_in_with_widget.dart';
import 'package:doctor_appointment_app/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                verticalSpacing(5),
                Text(
                  "We're excited to have you back, can't wait to\nsee what you've been up to since you last \nlogged in.",
                  style: TextStyles.font14GrayRegular.copyWith(height: 1.5.h),
                ),
                verticalSpacing(15),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpacing(5),
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
                    verticalSpacing(10),
                    AppTextButton(
                      buttonText: "Login",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    verticalSpacing(20),
                    const OrSignInWith(),
                    verticalSpacing(15),
                    const AccountsForSignUp(),
                    verticalSpacing(20),
                    const TermsAndConditionsText(),
                    verticalSpacing(10),
                    const AlreadyHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
            LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
    }
  }
}
