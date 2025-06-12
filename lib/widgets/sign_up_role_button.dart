import 'package:cofoundr/widgets/dropdown_global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../providers/sign_up_provider.dart';

class RoleDropdown extends ConsumerWidget {
  const RoleDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final role = ref.watch(roleProvider);

    return AppDropdownField(
      items: const [
        "Technical Co-Founder",
        "Non-Technical Co-Founder",
        "Designer",
        "Product Manager",
        "Advisor",
      ],
      value: role,
      hintText: "What are you looking for?",
      onChanged: (val) => ref.read(roleProvider.notifier).state = val!,
    );
  }
}
