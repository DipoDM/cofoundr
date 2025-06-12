import 'package:cofoundr/widgets/text_input.dart';
import 'package:flutter/material.dart';

class ShortBioInput extends StatelessWidget {
  const ShortBioInput({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      hintText: 'Short Bio',
      onChanged: (value) {
        // Handle the input value change if needed
      },
      maxLines: 3,
    );
  }
}
