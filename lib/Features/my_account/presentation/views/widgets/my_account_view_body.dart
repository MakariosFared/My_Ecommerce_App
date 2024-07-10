import 'package:dikkan/Features/my_account/presentation/views/widgets/custom_list_tile.dart';
import 'package:dikkan/Features/my_account/presentation/views/widgets/profile_header.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class MyAccountViewBody extends StatelessWidget {
  const MyAccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.43,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: kGreenColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: const ProfileHeader(),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33),
          child: Column(
            children: [
              const SizedBox(
                height: 225,
              ),
              Container(
                // height: 240,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 15,
                    left: 16,
                    right: 16,
                  ),
                  child: Column(
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
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
