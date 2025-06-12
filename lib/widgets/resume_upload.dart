import 'package:flutter/material.dart';

class ResumeUpload extends StatelessWidget {
  const ResumeUpload({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // Implement file picker logic
      },
      icon: const Icon(Icons.upload_file),
      label: const Text('Upload Resume'),
    );
  }
}