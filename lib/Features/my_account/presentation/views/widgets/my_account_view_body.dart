import 'package:dikkan/Features/my_account/presentation/views/widgets/custom_list_tile.dart';
import 'package:dikkan/Features/my_account/presentation/views/widgets/custom_my_account_container.dart';
import 'package:dikkan/Features/my_account/presentation/views/widgets/my_account_background.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountViewBody extends StatelessWidget {
  const MyAccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const MyAccountBackground(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 225,
              ),
              const CustomMyAccountContainer(
                children: [
                  CustomListTile(
                    leadingImage: 'assets/images/Location.svg',
                    title: 'My Addresses',
                  ),
                  CustomListTile(
                    title: 'Family Members',
                    leadingImage: 'assets/images/people.svg',
                  ),
                  CustomListTile(
                    leadingImage: 'assets/images/Heart.svg',
                    title: 'My Favorites',
                  ),
                  CustomListTile(
                    leadingImage: 'assets/images/Vector.svg',
                    title: 'Payment Methods',
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                'Settings',
                style: GoogleFonts.dmSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const CustomMyAccountContainer(
                children: [
                  CustomListTile(
                    leadingImage: 'assets/images/language_svgrepo.svg',
                    title: 'Arabic',
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                'Rewards',
                style: GoogleFonts.dmSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const CustomMyAccountContainer(children: [
                CustomListTile(
                  leadingImage: 'assets/images/language_svgrepo.svg',
                  title: 'Arabic',
                ),
                CustomListTile(
                  leadingImage: 'assets/images/language_svgrepo.svg',
                  title: 'Arabic',
                ),
              ])
            ],
          ),
        ),
      ],
    );
  }
}


