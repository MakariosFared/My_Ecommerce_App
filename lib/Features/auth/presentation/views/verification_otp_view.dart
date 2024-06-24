import 'package:dikkan/Features/auth/presentation/views/widgets/verification_with_otp_view_body.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class VerificationWithOTPView extends StatelessWidget {
  const VerificationWithOTPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(),
      body: const VerificationWithOtpViewBody(),
    );
  }
}
