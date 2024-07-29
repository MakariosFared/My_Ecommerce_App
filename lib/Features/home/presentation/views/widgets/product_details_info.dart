import 'package:dikkan/Features/home/presentation/views/widgets/details_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsInfo extends StatelessWidget {
  const ProductDetailsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 40,
              top: 14,
              bottom: 18,
            ),
            child: Row(
              children: [
                Text(
                  'Fresh Orange', //product name
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF3F4765),
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(
                  'assets/images/Shipping car.svg',
                ),
                const SizedBox(
                  width: 9,
                ),
                Text(
                  'Free',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff1C304F),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Color(0xffE1EAF5),
            endIndent: 24,
            indent: 24,
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Row(
              children: [
                Text(
                  '12,5 SAR ',
                  style: GoogleFonts.roboto(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1C304F),
                  ),
                ),
                Text(
                  '/ Kg',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF808A96),
                  ),
                ),
                const Spacer(),
                const DetailsCounter(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}