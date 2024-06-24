import 'package:dikkan/Features/auth/presentation/views/widgets/forget_password_view_body.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(),
      body: const ForgetPasswordViewBody(),
    );
  }
}
