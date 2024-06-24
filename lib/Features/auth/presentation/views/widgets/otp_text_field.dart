import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpTextFormField extends StatelessWidget {
  const OtpTextFormField({
    super.key,
    this.onSaved,
  });

  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: TextFormField(
        cursorHeight: 32,
        cursorColor: kGreenColor,
        obscureText: true,
        obscuringCharacter: '*',
        onSaved: onSaved,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: InputDecoration(
          fillColor: Colors.white,
          border: InputBorder.none,
          errorBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
        style: Theme.of(context).textTheme.headlineLarge,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      color: Color(0xffEDF1F7),
      style: BorderStyle.solid,
    ),
  );
}
