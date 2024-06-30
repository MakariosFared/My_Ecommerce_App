import 'package:dikkan/Features/home/presentation/views/widgets/special_offer_card.dart';
import 'package:flutter/material.dart';

class SpecialOfferSection extends StatelessWidget {
  const SpecialOfferSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 22, top: 12),
          child: SpecialOfferCard(),
        ),
      ],
    );
  }
}
