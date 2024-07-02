import 'package:dikkan/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: TextField(onTap: (){} ,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 18,
          ),
          hintText: 'Search',
          hintStyle: Styles.textStyleMedium16.copyWith(
            color: const Color(0xffB9B9B9),
          ),
          fillColor: Colors.white,
          filled: true,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
          suffixIcon: const Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Color(0xffB9B9B9),
              // size: 22,
            ),
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(
      color: Color(0xffFAFAFA),
    ),
  );
}
