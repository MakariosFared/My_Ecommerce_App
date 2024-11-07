import 'package:dikkan/Features/home/data/models/all_product_model2/all_product_model2.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/details_view_body.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({
    super.key,
    required this.allProductModel,
  });
  final AllProductModel2 allProductModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: DetailsViewBody(
        allProductModel: allProductModel,
      ),
    );
  }
}
