import 'package:dikkan/Features/home/presentation/views/widgets/special_offer_card.dart';
import 'package:flutter/material.dart';

class SpecialOfferSection extends StatelessWidget {
  const SpecialOfferSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 22, top: 12),
            child: SpecialOfferCard(),
          );
        },
      ),
    );
  }
}
