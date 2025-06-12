import 'package:cofoundr/constants/constant.dart';
import 'package:cofoundr/widgets/app_button.dart';
import 'package:flutter/material.dart';

class SubmitProfileButton extends StatelessWidget {
  const SubmitProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      color: AppColors.deepGreen,
      textColor: Colors.white,
      label: "Complete Profile",
      onPressed: () {
        // Submit profile logic
      },
    );
  }
}
