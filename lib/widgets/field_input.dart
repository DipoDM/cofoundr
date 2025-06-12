import 'package:cofoundr/providers/sign_in_provider.dart';
import 'package:cofoundr/widgets/dropdown_global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FieldInput extends ConsumerWidget {
  const FieldInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final field = ref.watch(fieldProvider);

    return AppDropdownField(
      items: const [
        'AI',
        'Climate',
        'Health',
        'Fintech',
        'Social Impact',
      ],
      value: field,
      hintText: 'Industry / Field',
      onChanged: (val) => ref.read(fieldProvider.notifier).state = val!,
    );
  }
}
