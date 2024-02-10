import 'package:doctor_appointment_app/core/helpers/spacing.dart';
import 'package:doctor_appointment_app/core/theming/colors.dart';
import 'package:doctor_appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class OrSignInWith extends StatefulWidget {
  const OrSignInWith({super.key});

  @override
  State<OrSignInWith> createState() => _OrSignInWithState();
}

class _OrSignInWithState extends State<OrSignInWith> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
            child: Divider(
          thickness: 1,
          color: ColorsManager.lightGray,
        )),
        horizontalSpacing(10),
        Text("Or sign in with", style: TextStyles.font13GrayRegular),
        horizontalSpacing(10),
        const Expanded(
            child: Divider(
          thickness: 1,
          color: ColorsManager.lightGray,
        )),
      ],
    );
  }
}
