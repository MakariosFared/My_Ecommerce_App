import 'package:dikkan/Core/utils/widgets/custom_back_button.dart';
import 'package:dikkan/Features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        SignUpViewBody(),
        CustomBackButton(),
      ],
    );
  }
}