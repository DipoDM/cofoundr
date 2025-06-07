// Splash screen UI
import 'package:cofoundr/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  @override
  void initState() {
    super.initState();

    // Simulate delay for splash + auth check
    Future.delayed(const Duration(seconds: 2), () {
      final isLoggedIn = false; //ref.read(authProvider);

      if (isLoggedIn == true) {
        context.go('/match'); // Navigate to main screen
      } else {
        context.go('/signin'); // Navigate to sign in
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.earthyOrange,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/cofoundr_logo.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 24),
              const Text(
                'CoFoundr',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.deepGreen,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
