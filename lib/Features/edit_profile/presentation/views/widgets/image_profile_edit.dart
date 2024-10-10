import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageProfileEdit extends StatelessWidget {
  const ImageProfileEdit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          alignment: Alignment.topCenter,
          height: 104,
          width: 110,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SvgPicture.asset(
              "assets/images/Profile.svg",
              height: 92,
              width: 92,
            ),
          ),
        ),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          child: SvgPicture.asset(
            'assets/images/camera.svg',
            fit: BoxFit.scaleDown,
          ),
        ),
      ],
    );
  }
}
