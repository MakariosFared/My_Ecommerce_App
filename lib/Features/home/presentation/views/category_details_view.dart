import 'package:dikkan/Features/home/data/models/category_model/category.model.dart';
import 'package:dikkan/Features/home/presentation/manager/categories_products_cubit/categories_products_cubit.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/category_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryDetailsView extends StatefulWidget {
  const CategoryDetailsView({
    super.key,
    required this.category,
  });

  final CategoryModel category;
  @override
  State<CategoryDetailsView> createState() => _CategoryDetailsViewState();
}

class _CategoryDetailsViewState extends State<CategoryDetailsView> {
  @override
  void initState() {
    BlocProvider.of<CategoriesProductsCubit>(context)
        .getCategoriesProduct(category: widget.category.name!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name!),
        scrolledUnderElevation: 0,
      ),
      body: const CategoryDetailsViewBody(
        category: CategoryModel(),
      ),
    );
  }
}
