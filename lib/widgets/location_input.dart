import 'package:cofoundr/widgets/text_input.dart';
import 'package:flutter/material.dart';

class LocationInput extends StatelessWidget {
  const LocationInput({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      onChanged: (value) {
        // Handle the input value change if needed
      },
      hintText: 'Location',
    );
  }
}
