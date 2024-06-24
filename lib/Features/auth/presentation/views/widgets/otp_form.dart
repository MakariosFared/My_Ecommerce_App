import 'package:dikkan/Features/auth/presentation/views/widgets/otp_text_field.dart';
import 'package:flutter/material.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OtpTextFormField(
            onSaved: (pin1) {},
          ),
          OtpTextFormField(
            onSaved: (pin2) {},
          ),
          OtpTextFormField(
            onSaved: (pin3) {},
          ),
          OtpTextFormField(
            onSaved: (pin4) {},
          ),
        ],
      ),
    );
  }
}
