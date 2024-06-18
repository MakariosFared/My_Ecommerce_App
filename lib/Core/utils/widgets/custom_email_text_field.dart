import 'package:dikkan/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      this.onChanged,
      this.suffixIcon,
      required this.padding, this.keyboardType});

  final String hint;
  final Function(String)? onChanged;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry padding;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        keyboardType: keyboardType,
        onChanged: onChanged,
        validator: (data) {
          if (data!.isEmpty) {
            return 'Field is required';
          }
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 18,
          ),
          hintText: hint,
          hintStyle: Styles.textStyleSemiBold16.copyWith(
            color: const Color(0xffB9B9B9),
          ),
          fillColor: const Color(0xffE7E7E7),
          filled: true,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
          suffixIcon: suffixIcon,
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
