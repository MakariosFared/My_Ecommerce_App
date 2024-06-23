import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_button.dart';
import 'package:dikkan/Core/utils/widgets/custom_email_text_field.dart';
import 'package:dikkan/Features/auth/presentation/views/widgets/verification_with_otp_view_body.dart';
import 'package:flutter/material.dart';

class VerificationWithOTPView extends StatelessWidget {
  const VerificationWithOTPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const VerificationWithOtpViewBody(),
    );
  }
}
