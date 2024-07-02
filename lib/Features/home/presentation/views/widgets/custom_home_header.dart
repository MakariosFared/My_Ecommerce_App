import 'package:dikkan/Core/utils/widgets/current_spot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomHomeHeader extends StatelessWidget {
  const CustomHomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          const CurrentSpot(),
          const Spacer(),
          SvgPicture.asset('assets/images/Card-Icon Copy.svg'),
          const SizedBox(width: 5),
          Flexible(
            flex: 3,
            child: Image.asset(
              'assets/images/logo.png',
              width: 84,
              height: 54,
            ),
          )
        ],
      ),
    );
  }
}

