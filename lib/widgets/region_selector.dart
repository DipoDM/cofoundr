import 'package:flutter/material.dart';

class RegionSelector extends StatelessWidget {
  const RegionSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(
        hintText: 'Preferred Region to Connect With',
      ),
      items: const [
        DropdownMenuItem(value: 'North America', child: Text('North America')),
        DropdownMenuItem(value: 'Europe', child: Text('Europe')),
        DropdownMenuItem(value: 'Asia', child: Text('Asia')),
        DropdownMenuItem(value: 'Africa', child: Text('Africa')),
        DropdownMenuItem(value: 'South America', child: Text('South America')),
      ],
      onChanged: (_) {},
    );
  }
}