import 'package:doctor_appointment_app/core/helpers/spacing.dart';
import 'package:doctor_appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountsForSignUp extends StatelessWidget {
  const AccountsForSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: ColorsManager.lighterGray,
          radius: 25.r,
          child: Image.asset('assets/images/google.png'),
        ),
        horizontalSpacing(20.w),
        CircleAvatar(
          backgroundColor: ColorsManager.lighterGray,
          radius: 25.r,
          child: Image.asset('assets/images/facebook.png'),
        ),
        horizontalSpacing(20.w),
        CircleAvatar(
          backgroundColor: ColorsManager.lighterGray,
          radius: 25.r,
          child: Image.asset('assets/images/apple.png'),
        )
      ],
    );
  }
}
