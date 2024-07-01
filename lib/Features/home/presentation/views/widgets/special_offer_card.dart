import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.22,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: kGreenColor.withAlpha(70),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                bottom: 24,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Limited-Time Offers Await You!',
                    style: Styles.textStyleBold20,
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Grab these exclusive discounts before they\'re gone!',
                    overflow: TextOverflow.clip,
                    maxLines: 3,
                  ),
                  SizedBox(height: 7),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Get it Now',
                        style: Styles.textStyleBold14,
                      ),
                      SizedBox(width: 6),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: Color(0xff25418B),
                        size: 26,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                SvgPicture.asset(
                  'assets/images/ellipse.svg',
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16, bottom: 22),
                  child: Image.asset(
                    'assets/images/persil_matik_toz_deterjan_gulun_buyusu_45_kg_511929001508941986.png',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
