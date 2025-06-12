import 'package:cofoundr/providers/profile_provider.dart';
import 'package:cofoundr/widgets/commitment_input.dart';
import 'package:cofoundr/widgets/field_input.dart';
import 'package:cofoundr/widgets/linkedin_input.dart';
import 'package:cofoundr/widgets/location_input.dart';
import 'package:cofoundr/widgets/preferred_roles_input.dart';
import 'package:cofoundr/widgets/profile_photo_input.dart';
import 'package:cofoundr/widgets/region_connect_input.dart';
import 'package:cofoundr/widgets/resume_upload.dart';
import 'package:cofoundr/widgets/short_bio_input.dart';
import 'package:cofoundr/widgets/skills_input.dart';
import 'package:cofoundr/widgets/startup_stage_input.dart';
import 'package:cofoundr/widgets/submit_profile_button.dart';
import 'package:cofoundr/widgets/weekly_availability_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../constants/constant.dart';

class ProfileSetupView extends ConsumerWidget {
  const ProfileSetupView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final completion = ref.watch(profileCompletionProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (completion >= 0.5) {
        Navigator.pushReplacementNamed(context, '/home');
      }
    });
    return Scaffold(
      backgroundColor: AppColors.earthyOrange,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppDimensions.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(child: Text('Profile Completion: ${(completion * 100).toStringAsFixed(0)}%')),
              const SizedBox(height: 24),
              const ProfilePhotoInput(),
              const SizedBox(height: 16),
              const LinkedInInput(),
              const SizedBox(height: 16),
              const ResumeUpload(),
              const SizedBox(height: 16),
              const ShortBioInput(),
              SizedBox(height: 16),
              SkillsInput(),
              SizedBox(height: 16),
              LocationInput(),
              SizedBox(height: 16),
              FieldInput(),
              SizedBox(height: 16),
              CommitmentInput(),
              SizedBox(height: 16),
              RegionConnectInput(),
              SizedBox(height: 16),
              StartupStageInput(),
              SizedBox(height: 16),
              const WeeklyAvailabilityInput(),
              const SizedBox(height: 16),
              const PreferredRolesInput(),
              const SizedBox(height: 24),
              const SubmitProfileButton(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
