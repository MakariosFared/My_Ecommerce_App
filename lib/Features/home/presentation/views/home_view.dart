import 'package:dikkan/Core/utils/widgets/custom_navigation_bar.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      bottomNavigationBar: const CustomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kGreenColor,
        elevation: 0,
        shape: const CircleBorder(),
        child: const Icon(
          FontAwesomeIcons.bagShopping,
          color: Colors.white,
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}
