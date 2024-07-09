import 'package:dikkan/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  size: 24,
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                ),
              ),
              Column(
                children: [
                  ClipOval(
                    child: SvgPicture.asset(
                      height: 60,
                      width: 60,
                      'assets/images/Profile.svg',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 11,
                      bottom: 4,
                    ),
                    child: Text(
                      'Mina Boules Fouad',
                      style: Styles.textStyleSemiBold16
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  Text(
                    'Minaboules@consultant.com',
                    style: Styles.textStyleMedium12
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const Icon(
                  size: 24,
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}