import 'package:dikkan/Features/my_account/presentation/views/widgets/my_account_view_body.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class MyAccountView extends StatelessWidget {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: MyAccountViewBody(),
    );
  }
}
