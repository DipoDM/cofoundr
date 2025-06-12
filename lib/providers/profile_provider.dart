import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileCompletionProvider = StateProvider<double>((ref) => 0.0);

void updateCompletion(WidgetRef ref, Map<String, dynamic> profileData) {
  int totalFields = profileData.length;
  int filledFields = profileData.values.where((v) => v != null && v.toString().trim().isNotEmpty).length;
  double percentage = filledFields / totalFields;
  ref.read(profileCompletionProvider.notifier).state = percentage;
}