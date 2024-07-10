import 'package:dikkan/Core/utils/app_router.dart';
import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_button.dart';
import 'package:dikkan/Features/auth/presentation/views/widgets/otp_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerificationWithOtpViewBody extends StatelessWidget {
  const VerificationWithOtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 40,
            left: 30,
            bottom: 10,
          ),
          child: Text(
            'Verification',
            style: Styles.textStyleSfProDisplayBold26,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 20,
            bottom: 30,
          ),
          child: Text(
            'Enter the OTP code from the phone we just sent you.',
            style: Styles.textStyleSfProDisplayRegular15.copyWith(
              color: const Color(0xff8F9BB3),
            ),
          ),
        ),
        const OtpForm(),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              Text(
                'Didn’t receive OTP code! ',
                style: Styles.textStyleSfProDisplayRegular15.copyWith(
                  color: const Color(0xff8F9BB3),
                ),
              ),
              const Text(
                'Resend',
                style: Styles.textStyleSfProDisplayRegular15,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
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
                text: 'Submit',
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kResetPassword);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
