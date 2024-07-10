import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.leadingImage,
    required this.title,
    this.onTap,
    this.leadingColor,
    this.titleColor,
  });

  final String leadingImage;
  final String title;
  final void Function()? onTap;
  final Color? leadingColor;
  final Color? titleColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: leadingColor ?? const Color(0xffF9FBFB),
          ),
          child: SvgPicture.asset(
            leadingImage,
            fit: BoxFit.none,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 16,
        ),
        title: Text(
          title,
          style: GoogleFonts.plusJakartaSans(
            color: titleColor ?? const Color(0xff001F1C),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
