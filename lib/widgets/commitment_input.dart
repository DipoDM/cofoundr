import 'package:cofoundr/providers/sign_in_provider.dart';
import 'package:cofoundr/widgets/dropdown_global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommitmentInput extends ConsumerWidget {
  const CommitmentInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commitment = ref.watch(commitmentProvider);

    return AppDropdownField(
      items: const [
        'Full-time',
        'Part-time',
        'Advisory',
      ],
      value: commitment,
      hintText: 'Commitment Level',
      onChanged: (val) => ref.read(commitmentProvider.notifier).state = val!,
    );
  }
}
