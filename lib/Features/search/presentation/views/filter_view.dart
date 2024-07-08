import 'package:dikkan/Features/search/presentation/views/widget/filter_view_body.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: FilterViewBody(),
      ),
    );
  }
}
