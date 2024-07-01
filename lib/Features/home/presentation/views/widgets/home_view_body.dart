import 'package:dikkan/Features/home/presentation/views/widgets/category_section.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/custom_header.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/custom_search_text_field.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/popular_section.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/special_offer_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomHeader(),
          SizedBox(
            height: 20,
          ),
          CustomSearchTextField(),
          SpecialOfferSection(),
          SizedBox(
            height: 24,
          ),
          CategorySection(),
          SizedBox(
            height: 14,
          ),
          PopularSection(),
        ],
      ),
    );
  }
}
