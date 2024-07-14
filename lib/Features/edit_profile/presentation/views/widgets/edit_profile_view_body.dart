import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_button.dart';
import 'package:dikkan/Core/utils/widgets/custom_password_text_field.dart';
import 'package:dikkan/Features/edit_profile/presentation/views/widgets/custom_edit_text_field.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfileViewBody extends StatelessWidget {
  const EditProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  height: 104,
                  width: 110,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SvgPicture.asset(
                      "assets/images/Profile.svg",
                      height: 92,
                      width: 92,
                    ),
                  ),
                ),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  child: SvgPicture.asset(
                    'assets/images/camera.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Mina Boules Fouad',
                style: Styles.textStyleSfProDisplayMedium16
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(width: 5),
              const Icon(
                FontAwesomeIcons.crown,
                color: kGreenColor,
                size: 18,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: Styles.textStyleSfProDisplayMedium16.copyWith(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                const CustomEditTextField(
                  hintText: 'Name',
                ),
                const SizedBox(height: 16),
                Text(
                  'Mobile',
                  style: Styles.textStyleSfProDisplayMedium16.copyWith(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                const CustomEditTextField(
                  hintText: 'Mobile',
                ),
                const SizedBox(height: 16),
                Text(
                  'Email',
                  style: Styles.textStyleSfProDisplayMedium16.copyWith(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                const CustomEditTextField(
                  hintText: 'Email',
                ),
                const SizedBox(height: 16),
                Text(
                  'Change Password',
                  style: Styles.textStyleSfProDisplayMedium16.copyWith(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                CustomPasswordTextField(
                  hint: 'Current Password',
                  obscureText: true,
                  isEditView: true,
                ),
                const SizedBox(height: 12),
                CustomPasswordTextField(
                  obscureText: true,
                  isEditView: true,
                  hint: 'New Password',
                ),
                const SizedBox(height: 12),
                CustomPasswordTextField(
                  obscureText: true,
                  hint: 'Re New Password',
                  isEditView: true,
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    borderRadius: BorderRadius.circular(8),
                    text: "Confirm",
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          )
        ],
      ),
    );
  }
}
