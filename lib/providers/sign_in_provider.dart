// Sign-in form providers (define these in your sign_in_provider.dart)
import 'package:flutter_riverpod/flutter_riverpod.dart';

final emailProvider = StateProvider<String>((ref) => '');
final passwordProvider = StateProvider<String>((ref) => '');
final fieldProvider = StateProvider<String?>((ref) => null);
final startupStageProvider = StateProvider<String?>((ref) => null);
final commitmentProvider = StateProvider<String?>((ref) => null);
final regionConnectProvider = StateProvider<String?>((ref) => null);
