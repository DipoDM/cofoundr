import 'package:cofoundr/providers/sign_in_provider.dart';
import 'package:cofoundr/widgets/dropdown_global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegionConnectInput extends ConsumerWidget {
  const RegionConnectInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final region = ref.watch(regionConnectProvider);

    return AppDropdownField(
      items: const [
        'Africa',
        'Asia',
        'North America',
        'Europe',
        'Latin America',
      ],
      value: region,
      hintText: 'Region to Connect With',
      onChanged: (val) => ref.read(regionConnectProvider.notifier).state = val!,
    );
  }
}
