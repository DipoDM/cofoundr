import 'package:cofoundr/widgets/text_input.dart';
import 'package:flutter/material.dart';

class SkillsInput extends StatelessWidget {
  const SkillsInput({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      hintText: 'Skills',
      onChanged: (value) {
        // Handle the input value change if needed
      },
    );
  }
}
