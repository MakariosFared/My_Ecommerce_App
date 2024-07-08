import 'package:dikkan/Core/utils/app_router.dart';
import 'package:dikkan/Core/utils/widgets/current_spot.dart';
import 'package:dikkan/Core/utils/widgets/custom_arrow_back.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSearchHeader extends StatelessWidget {
  const CustomSearchHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          CustomArrowBack(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kHomeView);
            },
          ),
          const SizedBox(width: 13),
          const CurrentSpot(),
          const Spacer(),
          const SizedBox(width: 5),
          Flexible(
            flex: 5,
            child: Image.asset(
              'assets/images/logo.png',
              width: 84,
              height: 54,
            ),
          ),
        ],
      ),
    );
  }
}
