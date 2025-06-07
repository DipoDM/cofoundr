import 'package:cofoundr/constants/constant.dart';
import 'package:cofoundr/widgets/link.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/app_button.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;

    return Scaffold(
      backgroundColor: AppColors.earthyOrange,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(AppDimensions.padding),
              physics: isKeyboardVisible ? const BouncingScrollPhysics() : const NeverScrollableScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    Image.asset(
                      'assets/images/cofoundr_logo.png',
                      width: 70,
                      height: 70,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'CoFoundr',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: AppColors.deepGreen,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: AppColors.deepGreen,
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.3),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onTapOutside: (event) => FocusScope.of(context).unfocus(),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.3),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onTapOutside: (event) => FocusScope.of(context).unfocus(),
                    ),
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Links(
                        onPressed: () => context.push('/forgot-password'),
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(color: AppColors.deepGreen),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.white.withOpacity(0.5),
                            thickness: 1,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text('Or', style: TextStyle(color: Colors.white)),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Divider(
                            color: Colors.white.withOpacity(0.5),
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    AppButton(
                      label: 'Continue with Apple',
                      color: Colors.black,
                      textColor: AppColors.textLight,
                      onPressed: () {},
                      icon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/apple_logo.png',
                          width: 24,
                          height: 24,
                          color: AppColors.textLight,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    AppButton(
                      label: 'Continue with Google',
                      color: AppColors.textLight,
                      textColor: AppColors.appleBlack,
                      onPressed: () {},
                      icon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/google_logo.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    AppButton(
                      label: 'Continue with Facebook',
                      color: AppColors.facebookBlue,
                      textColor: AppColors.textLight,
                      onPressed: () {},
                      icon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/fb.png',
                          width: 34,
                          height: 34,
                          color: AppColors.textLight,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Spacer(),
                    Links(
                      onPressed: () => context.push('/signup'),
                      child: const Text(
                        'Create an account',
                        style: TextStyle(
                          color: AppColors.deepGreen,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
