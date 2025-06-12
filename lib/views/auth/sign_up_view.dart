// import 'package:cofoundr/constants/constant.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../../providers/sign_up_provider.dart';
// import '../../widgets/app_button.dart';
// import '../../widgets/text_input.dart';

// class SignUpView extends ConsumerWidget {
//   const SignUpView({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final fullName = ref.watch(fullNameProvider);
//     final sign_up_email = ref.watch(emailProvider);
//     final sign_up_password = ref.watch(passwordProvider);
//     final role = ref.watch(roleProvider);

//     return Scaffold(
//       backgroundColor: AppColors.earthyOrange,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(AppDimensions.padding),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const SizedBox(height: 30),
//               const Text(
//                 'Sign Up',
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: AppColors.deepGreen,
//                 ),
//               ),
//               const SizedBox(height: 24),
//               AppTextField(
//                 hintText: 'Full Name',
//                 onChanged: (val) => ref.read(fullNameProvider.notifier).state = val,
//               ),
//               const SizedBox(height: 16),
//               AppTextField(
//                 hintText: 'Email',
//                 onChanged: (val) => ref.read(emailProvider.notifier).state = val,
//               ),
//               const SizedBox(height: 16),
//               AppTextField(
//                 hintText: 'Password',
//                 obscureText: true,
//                 onChanged: (val) => ref.read(passwordProvider.notifier).state = val,
//               ),
//               const SizedBox(height: 16),
//               DropdownButtonFormField<String>(
//                 decoration: InputDecoration(
//                   filled: true,
//                   fillColor: Colors.white.withOpacity(0.3),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//                 value: role,
//                 hint: const Text("What are you looking for?"),
//                 items: const [
//                   DropdownMenuItem(
//                     value: "Technical Co-Founder",
//                     child: Text("Technical Co-Founder"),
//                   ),
//                   DropdownMenuItem(
//                     value: "Non-Technical Co-Founder",
//                     child: Text("Non-Technical Co-Founder"),
//                   ),
//                   DropdownMenuItem(
//                     value: "Designer",
//                     child: Text("Designer"),
//                   ),
//                   DropdownMenuItem(
//                     value: "Product Manager",
//                     child: Text("Product Manager"),
//                   ),
//                   DropdownMenuItem(
//                     value: "Advisor",
//                     child: Text("Advisor"),
//                   ),
//                 ],
//                 onChanged: (val) => ref.read(roleProvider.notifier).state = val,
//               ),
//               const SizedBox(height: 24),
//               AppButton(
//                 label: 'Sign Up',
//                 color: AppColors.deepGreen,
//                 textColor: AppColors.textLight,
//                 onPressed: () {},
//               ),
//               const SizedBox(height: 16),
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(),
//                 child: const Text(
//                   'Already have an account? Sign In',
//                   style: TextStyle(color: AppColors.deepGreen),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:cofoundr/constants/constant.dart';
import 'package:cofoundr/widgets/already_have_account.dart';
import 'package:cofoundr/widgets/email_input.dart';
import 'package:cofoundr/widgets/full_name_input.dart';
import 'package:cofoundr/widgets/password_input.dart';
import 'package:cofoundr/widgets/sign_up_button.dart';
import 'package:cofoundr/widgets/sign_up_role_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpView extends ConsumerWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      backgroundColor: AppColors.earthyOrange,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(AppDimensions.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.deepGreen,
                ),
              ),
              SizedBox(height: 24),
              FullNameInput(),
              SizedBox(height: 16),
              EmailInput(),
              SizedBox(height: 16),
              PasswordInput(),
              SizedBox(height: 16),
              RoleDropdown(),
              SizedBox(height: 24),
              SignUpButton(),
              SizedBox(height: 16),
              AlreadyHaveAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
