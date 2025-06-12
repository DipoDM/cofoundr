import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/constant.dart';
import '../../../providers/sign_up_provider.dart';

class RoleDropdown extends ConsumerWidget {
  const RoleDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final role = ref.watch(roleProvider);

    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
          borderSide: BorderSide.none,
        ),
      ),
      value: role,
      hint: const Text("What are you looking for?"),
      items: const [
        DropdownMenuItem(value: "Technical Co-Founder", child: Text("Technical Co-Founder")),
        DropdownMenuItem(value: "Non-Technical Co-Founder", child: Text("Non-Technical Co-Founder")),
        DropdownMenuItem(value: "Designer", child: Text("Designer")),
        DropdownMenuItem(value: "Product Manager", child: Text("Product Manager")),
        DropdownMenuItem(value: "Advisor", child: Text("Advisor")),
      ],
      onChanged: (val) => ref.read(roleProvider.notifier).state = val,
    );
  }
}