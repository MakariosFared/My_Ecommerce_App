import 'package:flutter/material.dart';

class CustomMyAccountContainer extends StatelessWidget {
  const CustomMyAccountContainer({
    super.key,
    required this.children,
  });
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 240,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        child: Column(
          children: children,
        ),
      ),
    );
  }
}