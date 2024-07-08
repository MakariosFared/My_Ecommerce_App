import 'package:dikkan/Features/home/presentation/views/widgets/category_section.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/custom_home_header.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/custom_home_text_field.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/gride_list_view.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/popular_section.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/special_offer_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomHomeHeader()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(child: CustomHomeTextField()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 22),
              child: SpecialOfferSection(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          SliverToBoxAdapter(child: CategorySection()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 14,
            ),
          ),
          SliverToBoxAdapter(child: PopularSection()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 38.5,
            ),
          ),
          SliverToBoxAdapter(child: GrideListView()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}
