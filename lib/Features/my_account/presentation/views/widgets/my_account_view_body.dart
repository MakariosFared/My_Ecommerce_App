import 'package:dikkan/Features/my_account/presentation/views/widgets/profile_header.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class MyAccountViewBody extends StatelessWidget {
  const MyAccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}


