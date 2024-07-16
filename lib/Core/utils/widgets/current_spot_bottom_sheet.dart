import 'package:dikkan/Core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrentSpotBottomSheet extends StatelessWidget {
  const CurrentSpotBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 18,
            ),
            child: Text(
              'Your Address',
              style: GoogleFonts.dmSans(
                color: const Color(0xff9797A1),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Divider(
            height: 0,
            color: Color(0xffEFEFF1),
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            child: Row(
              children: [
                Container(
                  height: 74,
                  width: 74,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    border: Border.all(
                      color: const Color(0xffEFEFF1),
                    ),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/Your Location.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                 Text(
                  'Your Location',
                  style: GoogleFonts.dmSans(
                    color: const Color(0xff9797A1),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: SizedBox(
              // height: 60,
              width: double.infinity,
              child: CustomButton(
                borderRadius: BorderRadius.circular(10),
                text: 'Add Location',
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}