import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/current_spot_bottom_sheet.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CurrentSpot extends StatelessWidget {
  const CurrentSpot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'Your Current Spot',
          style: Styles.textStyleSemiBold12,
        ),
        const SizedBox(height: 5),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              barrierColor: Colors.transparent,
              // elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              backgroundColor: Colors.white,
              context: context,
              builder: (context) {
                return const CurrentSpotBottomSheet();
              },
            );
          },
          child: Row(
            children: [
              SvgPicture.asset(kLocationIcon),
              const SizedBox(
                width: 8,
              ),
              const Text(
                'Lorem Ipsum Street, No. 1',
                style: Styles.textStyleBold14,
              ),
              const SizedBox(
                width: 8,
              ),
              SvgPicture.asset('assets/images/arrow_drop_down.svg')
            ],
          ),
        ),
      ],
    );
  }
}


