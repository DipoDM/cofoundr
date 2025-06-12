import 'package:cofoundr/widgets/text_input.dart';
import 'package:flutter/material.dart';

class WeeklyAvailabilityInput extends StatelessWidget {
  const WeeklyAvailabilityInput({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      hintText: 'Hours available per week',
      keyboardType: TextInputType.number,
      onChanged: (value) {
        // Handle the input value change if needed
      },
    );
  }
}
