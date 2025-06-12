import 'package:flutter/material.dart';

class CommitmentSlider extends StatefulWidget {
  const CommitmentSlider({super.key});

  @override
  State<CommitmentSlider> createState() => _CommitmentSliderState();
}

class _CommitmentSliderState extends State<CommitmentSlider> {
  double _value = 0.5;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Commitment Level'),
        Slider(
          value: _value,
          onChanged: (val) {
            setState(() {
              _value = val;
            });
          },
        ),
      ],
    );
  }
}