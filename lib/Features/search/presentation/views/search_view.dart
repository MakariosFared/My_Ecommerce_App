import 'package:dikkan/Features/search/presentation/views/widget/search_view_body.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: SearchViewBody(),
    );
  }
}
