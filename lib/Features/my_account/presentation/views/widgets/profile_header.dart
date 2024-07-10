import 'package:dikkan/Core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 33),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                alignment: Alignment.topLeft,
                iconSize: 24,
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
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    'Minaboules@consultant.com',
                    style: GoogleFonts.plusJakartaSans(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kEditProfile);
                },
                child: SvgPicture.asset(
                  'assets/images/Pencil.svg',
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
