import 'package:dikkan/Core/utils/widgets/custom_counter_button.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsCounter extends StatefulWidget {
  const DetailsCounter({super.key});

  @override
  DetailsCounterState createState() => DetailsCounterState();
}

class DetailsCounterState extends State<DetailsCounter> {
  int counter = 20;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomCounterButton(
          onPressed: () {
            setState(
              () {
                if (counter > 0) {
                  counter -= 1;
                }
              },
            );
          },
          icon: const Icon(
            Icons.remove,
            size: 20,
            color: Color(0xff1C304F),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          '$counter',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: kGreenColor,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        CustomCounterButton(
          onPressed: () {
            setState(
              () {
                counter += 1;
              },
            );
          },
          icon: const Icon(
            Icons.add,
            size: 20,
            color: Color(0xff1C304F),
          ),
        ),
      ],
    );
  }
}
