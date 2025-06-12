import 'package:cofoundr/providers/sign_in_provider.dart';
import 'package:cofoundr/widgets/dropdown_global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StartupStageInput extends ConsumerWidget {
  const StartupStageInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final startupStage = ref.watch(startupStageProvider);

    return AppDropdownField(
      items: const [
        'Idea',
        'MVP',
        'Launched',
        'Revenue',
        'Funded',
      ],
      value: startupStage,
      hintText: 'Startup Stage',
      onChanged: (val) => ref.read(startupStageProvider.notifier).state = val!,
    );
  }
}
