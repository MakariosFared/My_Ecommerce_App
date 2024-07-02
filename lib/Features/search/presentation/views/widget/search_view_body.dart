import 'package:dikkan/Features/search/presentation/views/widget/custom_search_header.dart';
import 'package:dikkan/Features/search/presentation/views/widget/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
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
              SvgPicture.asset('assets/images/filter Icon.svg')
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        
      ],
    ),);
  }
}
