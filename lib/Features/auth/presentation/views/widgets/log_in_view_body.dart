import 'package:dikkan/Features/auth/presentation/views/widgets/auth_header.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AuthHeader(),
        ],
      ),
    );
  }
}


