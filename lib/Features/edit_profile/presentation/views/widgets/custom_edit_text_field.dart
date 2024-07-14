import 'package:dikkan/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomEditTextField extends StatelessWidget {
  const CustomEditTextField({
    super.key,
    required this.hintText,
  });

  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () {},
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Styles.textStyleSfProDisplayMedium16.copyWith(
          color: const Color(0xff747B96),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 15,
        ),
        fillColor: Colors.white,
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(
      width: 2,
      color: Color(0xffC7CCDA),
    ),
  );
}
