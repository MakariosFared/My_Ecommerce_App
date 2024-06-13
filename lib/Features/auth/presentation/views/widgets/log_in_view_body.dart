import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_text_field.dart';
import 'package:dikkan/Features/auth/presentation/views/widgets/auth_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          Column(
            children: [
              AuthHeader(),
              SizedBox(
                height: 40,
              ),
              Text(
                'Welcome Back!',
                style: Styles.textStyleBold24,
              ),
              Text(
                'Let\'s start your culinary adventure',
                style: Styles.textStyleBold20,
              ),
              SizedBox(
                height: 26,
              ),
              CustomTextField(hint: 'Enter your email or username'),
              SizedBox(
                height: 16,
              ),
              CustomTextField(hint: 'Password'),
            ],
          ),
        ],
      ),
    );
  }
}
