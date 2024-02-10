import 'package:doctor_appointment_app/core/helpers/extensions.dart';
import 'package:doctor_appointment_app/core/routing/routes.dart';
import 'package:doctor_appointment_app/core/theming/colors.dart';
import 'package:doctor_appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ColorsManager.blue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all(
            const Size(double.infinity, 52),
          ),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ))),
      child: Text('Get Started', style: TextStyles.font16WhiteMedium),
    );
  }
}
