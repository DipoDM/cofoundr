import 'package:cofoundr/constants/constant.dart';
import 'package:cofoundr/providers/sign_in_provider.dart';
import 'package:cofoundr/widgets/link.dart';
import 'package:cofoundr/widgets/app_button.dart';
import 'package:cofoundr/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignInView extends ConsumerWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;

    return Scaffold(
      backgroundColor: AppColors.earthyOrange,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(AppDimensions.padding),
                physics: isKeyboardVisible ? const BouncingScrollPhysics() : const NeverScrollableScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildLogo(),
                      const SizedBox(height: 16),
                      buildInputFields(ref, context),
                      const SizedBox(height: 16),
                      buildDivider(),
                      const SizedBox(height: 16),
                      buildSocialButtons(),
                      const SizedBox(height: 24),
                      buildFooter(context),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildLogo() {
    return const Column(
      children: [
        SizedBox(height: 8),
        Text(
          'CoFoundr',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: AppColors.deepGreen,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Sign In',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: AppColors.deepGreen,
          ),
        ),
      ],
    );
  }

  Widget buildInputFields(WidgetRef ref, BuildContext context) {
    final email = ref.watch(emailProvider).trim();
    final password = ref.watch(passwordProvider).trim();
    final isEnabled = email.trim().isNotEmpty && password.trim().isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppTextField(
          hintText: 'Email',
          onChanged: (val) => ref.read(emailProvider.notifier).state = val,
        ),
        const SizedBox(height: 16),
        AppTextField(
          hintText: 'Password',
          obscureText: true,
          onChanged: (val) => ref.read(passwordProvider.notifier).state = val,
        ),
        const SizedBox(height: 24),
        AppButton(
          label: 'Login',
          color: isEnabled ? AppColors.deepGreen : Colors.grey,
          textColor: AppColors.textLight,
          onPressed: isEnabled
              ? () {
                  // Optional: Perform auth here, then navigate
                  context.go('/profile-setup');
                }
              : null,
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
      ],
    );
  }

  Widget buildDivider() {
    return Row(
      children: [
        Expanded(
          child: Divider(color: Colors.white.withOpacity(0.5), thickness: 1),
        ),
        const SizedBox(width: 8),
        const Text('Or', style: TextStyle(color: Colors.white)),
        const SizedBox(width: 8),
        Expanded(
          child: Divider(color: Colors.white.withOpacity(0.5), thickness: 1),
        ),
      ],
    );
  }

  Widget buildSocialButtons() {
    return Column(
      children: [
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
      ],
    );
  }

  Widget buildFooter(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}
