import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfileViewBody extends StatelessWidget {
  const EditProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(height: 12),
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
        )
      ],
    );
  }
}
