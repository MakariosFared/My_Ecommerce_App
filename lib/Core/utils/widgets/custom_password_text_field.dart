import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class CustomPasswordTextField extends StatefulWidget {
  CustomPasswordTextField({
    super.key,
    required this.hint,
    this.onChanged,
    this.obscureText = false,
    this.isEditView = false,
  });
  final String hint;
  final Function(String)? onChanged;
  bool? obscureText;
  final bool isEditView;
  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.isEditView
          ? EdgeInsets.zero
          : const EdgeInsets.symmetric(horizontal: 24),
      child: TextFormField(
        obscureText: widget.obscureText!,
        onChanged: widget.onChanged,
        validator: (data) {
          if (data!.isEmpty) {
            return 'Field is required';
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: widget.isEditView
              ? const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 15,
                )
              : const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 18,
                ),
          suffixIcon: IconButton(
              color: const Color(0xffB9B9B9),
              icon: widget.obscureText!
                  ? const Icon(
                      Icons.visibility_off,
                      color: Color(0xff313131),
                      size: 24,
                    )
                  : const Icon(
                      Icons.visibility,
                      color: kGreenColor,
                      size: 24,
                    ),
              onPressed: () {
                setState(() {
                  widget.obscureText = !widget.obscureText!;
                });
              }),
          hintText: widget.hint,
          hintStyle: widget.isEditView
              ? Styles.textStyleSfProDisplayMedium16
                  .copyWith(color: const Color(0xff747B96))
              : Styles.textStyleSemiBold16.copyWith(
                  color: const Color(0xffB9B9B9),
                ),
          fillColor: const Color(0xffE7E7E7),
          filled: widget.isEditView ? false : true,
          border: widget.isEditView ? buildBorderEditView() : buildBorder(),
          enabledBorder:
              widget.isEditView ? buildBorderEditView() : buildBorder(),
          focusedBorder:
              widget.isEditView ? buildBorderEditView() : buildBorder(),
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

  OutlineInputBorder buildBorderEditView() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        width: 2,
        color: Color(0xffC7CCDA),
      ),
    );
  }
}
