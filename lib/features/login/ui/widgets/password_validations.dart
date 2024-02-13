import 'package:doctor_appointment_app/core/helpers/spacing.dart';
import 'package:doctor_appointment_app/core/theming/colors.dart';
import 'package:doctor_appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacters;
  final bool hasMinLength;

  const PasswordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasNumber,
      required this.hasSpecialCharacters,
      required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least 8 characters", hasMinLength),
        buildValidationRow("At least 1 number", hasNumber),
        buildValidationRow("At least 1 special character", hasSpecialCharacters),
        buildValidationRow("At least 1 uppercase letter", hasUpperCase),
        buildValidationRow("At least 1 lowercase letter", hasLowerCase),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.gray,
        ),
        horizontalSpacing(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
