import 'package:cofoundr/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../providers/sign_up_provider.dart';

class FullNameInput extends ConsumerWidget {
  const FullNameInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppTextField(
      hintText: 'Full Name',
      onChanged: (val) => ref.read(fullNameProvider.notifier).state = val,
    );
  }
}
