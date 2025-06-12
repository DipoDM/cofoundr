import 'package:cofoundr/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../providers/sign_up_provider.dart';

class EmailInput extends ConsumerWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppTextField(
      hintText: 'Email',
      onChanged: (val) => ref.read(emailProvider.notifier).state = val,
    );
  }
}
