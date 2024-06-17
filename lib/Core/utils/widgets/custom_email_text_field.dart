import 'package:dikkan/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomEmailTextField extends StatelessWidget {
   CustomEmailTextField({super.key, required this.hint});
  final String hint;
    Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextFormField(
        onChanged: onChanged,
        validator: (data) {
        if (data!.isEmpty) {
          return 'Field is required';
        }
      },
        decoration: InputDecoration(
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
