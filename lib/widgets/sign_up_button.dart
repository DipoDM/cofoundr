import 'package:cofoundr/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/constant.dart';
import '../../../providers/sign_up_provider.dart';

class SignUpButton extends ConsumerWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = ref.watch(emailProvider).trim();
    final password = ref.watch(passwordProvider).trim();
    final isEnabled = email.isNotEmpty && password.isNotEmpty;

    return AppButton(
      label: 'Sign Up',
      color: isEnabled ? AppColors.deepGreen : Colors.grey,
      textColor: AppColors.textLight,
      onPressed: isEnabled ? () {} : null,
    );
  }
}
