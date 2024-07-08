import 'package:dikkan/Core/utils/widgets/custom_arrow_back.dart';
import 'package:flutter/material.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  CustomArrowBack(
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 84,
                    height: 54,
                  )
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
