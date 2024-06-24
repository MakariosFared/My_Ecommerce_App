import 'package:dikkan/Core/utils/app_router.dart';
import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_button.dart';
import 'package:dikkan/Core/utils/widgets/custom_email_text_field.dart';
import 'package:dikkan/Core/utils/widgets/custom_password_text_field.dart';
import 'package:dikkan/Features/auth/presentation/views/widgets/auth_header.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
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
                height: 15,
              ),
              const Text(
                'Join To Dikkan Family',
                style: Styles.textStyleBold20,
              ),
              const SizedBox(
                height: 18,
              ),
              const CustomTextField(
                keyboardType: TextInputType.name,
                hint: 'Enter your Full Name',
                padding: EdgeInsets.symmetric(horizontal: 24),
              ),
              const SizedBox(
                height: 9,
              ),
              const CustomTextField(
                keyboardType: TextInputType.phone,
                hint: 'Phone Number',
                padding: EdgeInsets.symmetric(horizontal: 24),
              ),
              const SizedBox(
                height: 9,
              ),
              CustomTextField(
                // keyboardType: TextInputType.streetAddress,
                hint: 'Your Address',
                suffixIcon: IconButton(
                  iconSize: 4,
                  onPressed: () {},
                  icon: Image.asset("assets/images/distance.png"),
                  // icon: SvgPicture.asset("assets/images/distance.svg"),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 24),
              ),
              const SizedBox(
                height: 9,
              ),
              CustomPasswordTextField(
                obscureText: true,
                hint: 'Password',
              ),
              const SizedBox(
                height: 9,
              ),
              CustomPasswordTextField(
                obscureText: true,
                hint: 'Re-Password',
              ),
              const SizedBox(
                height: 19,
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
                      'Accept Privacy Policy And Terms of use',
                      style: Styles.textStyleMedium12,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 366,
                child: CustomButton(
                  text: 'Create Account',
                  onPressed: () {},
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'You Have Account ?',
                    style: Styles.textStyleBold16,
                  ),
                  TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kLogIn);
                    },
                    child: Text(
                      selectionColor: kGreenColor,
                      ' Log in >',
                      style: Styles.textStyleBold16.copyWith(
                        color: kGreenColor,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 60,
              )
            ],
          ),
        ],
      ),
    );
  }
}
