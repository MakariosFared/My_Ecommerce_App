import 'package:dikkan/Features/auth/presentation/views/widgets/reset_password_view_body.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(),
      body: const ResetPasswordViewBody(),
    );
  }
}
