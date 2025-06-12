import 'package:cofoundr/providers/sign_in_provider.dart';
import 'package:cofoundr/widgets/dropdown_global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FieldSelector extends ConsumerWidget {
  const FieldSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final field = ref.watch(fieldProvider);

    return AppDropdownField(
      items: const [
        'Tech',
        'Design',
        'Business',
        'Marketing',
        'Climate',
        'Fintech',
        'AI',
        'Education',
        'Healthcare',
      ],
      value: field,
      hintText: 'Select your field',
      onChanged: (val) => ref.read(fieldProvider.notifier).state = val!,
    );
  }
}
