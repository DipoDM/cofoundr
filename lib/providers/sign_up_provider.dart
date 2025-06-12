
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fullNameProvider = StateProvider<String>((ref) => '');
final emailProvider = StateProvider<String>((ref) => '');
final passwordProvider = StateProvider<String>((ref) => '');
final roleProvider = StateProvider<String?>((ref) => null);
