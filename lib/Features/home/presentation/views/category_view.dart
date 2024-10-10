import 'package:dikkan/Features/home/presentation/views/widgets/category_view_body.dart';
import 'package:flutter/material.dart';

class AllCategoryView extends StatelessWidget {
  const AllCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text('Categories'),
      ),
      body: const AllCategoryViewBody(),
    );
  }
}
