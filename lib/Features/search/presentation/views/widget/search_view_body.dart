import 'package:dikkan/Features/search/presentation/views/widget/custom_search_header.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Column(
      children: [
        CustomSearchHeader(),
      ],
    ));
  }
}
