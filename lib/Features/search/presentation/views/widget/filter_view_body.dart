import 'package:dikkan/Core/utils/widgets/custom_arrow_back.dart';
import 'package:dikkan/Features/search/presentation/views/widget/filtered_item.dart';
import 'package:flutter/material.dart';

class FilterViewBody extends StatelessWidget {
  const FilterViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(
          height: 18,
        ),
        const FilteredItemsSection(),
      ],
    );
  }
}

class FilteredItemsSection extends StatelessWidget {
  const FilteredItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const FilteredItem();
  }
}

