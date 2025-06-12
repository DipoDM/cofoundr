import 'package:cofoundr/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final linkedInProvider = StateProvider<String>((ref) => '');

class LinkedInInput extends ConsumerWidget {
  const LinkedInInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppTextField(
      hintText: 'LinkedIn Profile URL',
      onChanged: (value) => ref.read(linkedInProvider.notifier).state = value,
    );
  }
}
