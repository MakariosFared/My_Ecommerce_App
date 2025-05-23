import 'package:dikkan/Core/utils/app_router.dart';
import 'package:dikkan/Features/search/presentation/views/widget/custom_search_header.dart';
import 'package:dikkan/Features/search/presentation/views/widget/custom_search_text_field.dart';
import 'package:dikkan/Features/search/presentation/views/widget/popular_categories.dart';
import 'package:dikkan/Features/search/presentation/views/widget/search_history_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomSearchHeader(),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [
                    const Expanded(
                      child: CustomSearchTextField(),
                    ),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kFilterView);
                      },
                      child: SvgPicture.asset('assets/images/filter Icon.svg'),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SearchHistorySection(),
              const SizedBox(
                height: 30,
              ),
              const PopularCategories(),
              const SizedBox(
                height: 34,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
