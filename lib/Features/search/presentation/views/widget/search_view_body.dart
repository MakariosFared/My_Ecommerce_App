import 'package:dikkan/Features/home/presentation/views/widgets/custom_home_header.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Column(
      children: [CustomHomeHeader()],
    ));
  }
}
