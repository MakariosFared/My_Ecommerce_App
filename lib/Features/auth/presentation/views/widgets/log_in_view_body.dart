import 'package:dikkan/Core/utils/app_router.dart';
import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_email_text_field.dart';
import 'package:dikkan/Core/utils/widgets/custom_log_in_button.dart';
import 'package:dikkan/Core/utils/widgets/custom_password_text_field.dart';
import 'package:dikkan/Core/utils/widgets/custom_sign_up_button.dart';
import 'package:dikkan/Features/auth/presentation/views/widgets/auth_header.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LogInViewBody extends StatefulWidget {
  const LogInViewBody({
    super.key,
  });

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
  bool value = false;
  String? email, password;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Column(
            children: [
              const AuthHeader(),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Welcome Back!',
                style: Styles.textStyleBold24,
              ),
              const Text(
                'Let\'s start your culinary adventure',
                style: Styles.textStyleBold20,
              ),
              const SizedBox(
                height: 26,
              ),
              CustomTextField(
                hint: 'Enter your email or username',
                onChanged: (data) {
                  email = data;
                },
                padding: const EdgeInsets.symmetric(horizontal: 24),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomPasswordTextField(
                hint: 'Password',
                obscureText: false,
                onChanged: (data) {
                  password = data;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Checkbox(
                      visualDensity: const VisualDensity(
                        horizontal: -4,
                        vertical: 0,
                      ),
                      side: const BorderSide(
                        color: Color(0xff707070),
                        width: 1.5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      value: value,
                      onChanged: (value) {
                        setState(() {
                          this.value = value!;
                        });
                      },
                      activeColor: kGreenColor,
                    ),
                    const Text(
                      'Stay Logged In',
                      style: Styles.textStyleMedium12,
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.kForgetPassword);
                      },
                      child: Text(
                        'Forgot Password?',
                        style: Styles.textStyleSemiBold12.copyWith(
                          color: const Color(0xff25418B),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const CustomLogINButton(),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'You New Here?',
                style: Styles.textStyleBold16,
              ),
              const SizedBox(
                height: 24,
              ),
              const CustomSignUpButton(),
              const SizedBox(
                height: 92,
              )
            ],
          ),
        ],
      ),
    );
  }
}
