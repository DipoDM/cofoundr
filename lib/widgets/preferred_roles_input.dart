import 'package:flutter/material.dart';

class PreferredRolesInput extends StatelessWidget {
  const PreferredRolesInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Roles You Are Looking For'),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: [
            FilterChip(label: const Text("Technical Co-Founder"), onSelected: (_) {}),
            FilterChip(label: const Text("Designer"), onSelected: (_) {}),
            FilterChip(label: const Text("Operator"), onSelected: (_) {}),
            FilterChip(label: const Text("Growth Hacker"), onSelected: (_) {}),
          ],
        ),
      ],
    );
  }
}