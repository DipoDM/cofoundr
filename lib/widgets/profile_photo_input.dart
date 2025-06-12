import 'package:flutter/material.dart';

class ProfilePhotoInput extends StatelessWidget {
  const ProfilePhotoInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Upload Profile Photo'),
        const SizedBox(height: 8),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade300,
          ),
          child: const Icon(Icons.camera_alt),
        ),
      ],
    );
  }
}
