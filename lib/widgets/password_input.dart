import 'package:cofoundr/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../providers/sign_up_provider.dart';

class PasswordInput extends ConsumerWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppTextField(
      hintText: 'Password',
      obscureText: true,
      onChanged: (val) => ref.read(passwordProvider.notifier).state = val,
    );
  }
}
