import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_button.dart';
import 'package:dikkan/Core/utils/widgets/custom_password_text_field.dart';
import 'package:flutter/material.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 40,
            left: 30,
            bottom: 12,
          ),
          child: Text(
            'Reset Password',
            style: Styles.textStyleSfProDisplayBold26,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            bottom: 23,
          ),
          child: Text(
            'Enter your new password and confirm.',
            style: Styles.textStyleSfProDisplayRegular15.copyWith(
              color: const Color(0xff8F9BB3),
            ),
          ),
        ),
        SizedBox(
          // height: 55,
          width: double.infinity,
          child: CustomPasswordTextField(
            obscureText: true,
            hint: 'Password',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          // height: 55,
          width: double.infinity,
          child: CustomPasswordTextField(
            obscureText: true,
            hint: 'Re-Password',
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 13.5,
                right: 13.5,
              ),
              child: CustomButton(
                borderRadius: BorderRadius.circular(40),
                text: 'Done',
                onPressed: () {
                  // GoRouter.of(context).push(AppRouter.kVerification);
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
