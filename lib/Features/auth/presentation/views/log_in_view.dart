import 'package:dikkan/Core/utils/widgets/custom_back_button.dart';
import 'package:dikkan/Features/auth/presentation/views/widgets/log_in_view_body.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          LogInViewBody(),
          const CustomBackButton(),
        ],
      ),
    );
  }
}
