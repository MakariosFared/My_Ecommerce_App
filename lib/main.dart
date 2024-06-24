import 'package:dikkan/Core/utils/app_router.dart';
import 'package:dikkan/Features/auth/presentation/views/verification_otp_view.dart';
import 'package:dikkan/Features/auth/presentation/views/widgets/verification_with_otp_view_body.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DikkanApp());
}

class DikkanApp extends StatefulWidget {
  const DikkanApp({super.key});

  @override
  State<DikkanApp> createState() => _DikkanAppState();
}

class _DikkanAppState extends State<DikkanApp> {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp.router(
    //   theme: ThemeData(
    //     primaryColor: kPrimaryColor,
    //   ),
    //   routerConfig: AppRouter.router,

    //   debugShowCheckedModeBanner: false,

    // );
    return const MaterialApp(
      home: VerificationWithOTPView(),
    );
  }
}
