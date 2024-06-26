import 'package:dikkan/Features/home/presentation/views/widgets/custom_header.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomHeader(),
        ],
      ),
    );
  }
}
