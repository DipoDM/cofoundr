import 'package:flutter/material.dart';
import '../../../constants/constant.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.of(context).pop(),
      child: const Text(
        'Already have an account? Sign In',
        style: TextStyle(color: AppColors.deepGreen),
      ),
    );
  }
}