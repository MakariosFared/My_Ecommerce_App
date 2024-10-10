import 'package:dikkan/Features/home/presentation/views/widgets/details_view_body.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: DetailsViewBody(),
    );
  }
}
