import 'package:dikkan/Core/utils/app_router.dart';
import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_button.dart';
import 'package:dikkan/Core/utils/widgets/custom_email_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

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
            'Forget Password',
            style: Styles.textStyleSfProDisplayBold26,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            bottom: 30,
          ),
          child: Text(
            'Please enter your Email so we can help you recover your password.',
            style: Styles.textStyleSfProDisplayRegular15.copyWith(
              color: const Color(0xff8F9BB3),
            ),
          ),
        ),
        const SizedBox(
          // height: 55,
          width: double.infinity,
          child: CustomTextField(
            keyboardType: TextInputType.phone,
            hint: 'Phone Number',
            padding: EdgeInsets.symmetric(horizontal: 13.5),
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
                text: 'Send SMS Code',
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kVerification);
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
