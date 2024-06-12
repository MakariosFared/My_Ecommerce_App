import 'package:dikkan/Features/auth/presentation/views/widgets/log_in_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const LogInViewBody(),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset('assets/images/back.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
