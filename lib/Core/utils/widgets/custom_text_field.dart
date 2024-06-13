import 'package:dikkan/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: hint == 'Password'
              ? IconButton(
                  color: const Color(0xffB9B9B9),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.visibility_off,
                    color: Color(0xff313131),
                    size: 24,
                  ),
                )
              : null,
          hintText: hint,
          hintStyle: Styles.textStyleSemiBold16.copyWith(
            color: const Color(0xffB9B9B9),
          ),
          fillColor: const Color(0xffE7E7E7),
          filled: true,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: Color(0xffFAFAFA),
      ),
    );
  }
}
