import 'package:dikkan/Features/home/presentation/views/widgets/details_header_icon_button.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsHeaderBar extends StatelessWidget {
  const DetailsHeaderBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
        left: 24,
        right: 24,
      ),
      child: Row(
        children: [
          DetailsHeaderIconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const Spacer(),
          DetailsHeaderIconButton(
            icon: SvgPicture.asset(
              'assets/images/Icon - Heart.svg',
            ),
            onPressed: () {},
            iconColor: kGreenColor,
          ),
          const SizedBox(
            width: 16,
          ),
          DetailsHeaderIconButton(
            icon: const Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
