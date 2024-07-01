import 'package:dikkan/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class GrideListView extends StatelessWidget {
  const GrideListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        clipBehavior: Clip.none,
        scrollDirection: Axis.vertical,
        itemCount: 12,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 18,
          childAspectRatio: 0.77,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 92,
            height: 118,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/images/vegetables.png'),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffCCCCCC),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Drow \nRanger',
                style: Styles.textStyleSfProDisplayRegular15.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
