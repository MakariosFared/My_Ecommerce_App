import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class DetailsHeaderBar extends StatelessWidget {
  const DetailsHeaderBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
        left: 24,
        right: 24,
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: IconButton(
              color: Colors.black,
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          const Spacer(),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: IconButton(
              color: Colors.black,
              icon: const Icon(
                Icons.favorite,
                color: kGreenColor,
              ),
              onPressed: () {
              },
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: IconButton(
              color: Colors.black,
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              onPressed: () {
              },
            ),
          ),
        ],
      ),
    );
  } 
}