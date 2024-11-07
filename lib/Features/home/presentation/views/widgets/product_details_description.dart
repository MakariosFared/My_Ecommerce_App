import 'package:dikkan/Features/home/data/models/all_product_model2/all_product_model2.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsDescription extends StatelessWidget {
  const ProductDetailsDescription({
    super.key,
    required this.allProductModel,
  });
  final AllProductModel2 allProductModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffFCFCFD),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 12,
          bottom: 18,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: const Color(0xff3F4765),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: allProductModel.description ??
                        'No description available',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff7A819A),
                      height: 2,
                    ),
                  ),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        ' More',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: kGreenColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
