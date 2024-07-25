import 'package:flutter/material.dart';

class DetailsHeaderIconButton extends StatelessWidget {
  const DetailsHeaderIconButton({
    super.key,
    this.iconColor = Colors.black,
    required this.icon,
    required this.onPressed,
  });

  final Color iconColor;
  final Widget icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        color: iconColor,
        icon: icon,
        onPressed: onPressed,
      ),
    );
  }
}
