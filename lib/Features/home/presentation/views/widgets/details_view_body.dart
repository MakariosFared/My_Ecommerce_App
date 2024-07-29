import 'package:dikkan/Core/utils/widgets/custom_counter_button.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/details_header_bar.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/details_product_images_section.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/dots_indicator.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsViewBody extends StatefulWidget {
  const DetailsViewBody({super.key});

  @override
  State<DetailsViewBody> createState() => _DetailsViewBodyState();
}

class _DetailsViewBodyState extends State<DetailsViewBody> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          fit: StackFit.passthrough,
          children: [
            DetailsProductImagesSection(
              pageController: pageController,
            ),
            const DetailsHeaderBar(),
            Positioned(
              bottom: 16,
              right: 24,
              child: DotsIndicator(currentPageIndex: currentPageIndex),
            ),
          ],
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          height: 124,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 40,
                  top: 14,
                  bottom: 18,
                ),
                child: Row(
                  children: [
                    Text(
                      'Fresh Orange', //product name
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF3F4765),
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      'assets/images/Shipping car.svg',
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    Text(
                      'Free',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff1C304F),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Color(0xffE1EAF5),
                endIndent: 24,
                indent: 24,
                height: 1,
                thickness: 1,
              ),
              Row(
                children: [
                  Text(
                    '12,5 SAR ',
                    style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1C304F),
                    ),
                  ),
                  Text(
                    '/ Kg',
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF808A96),
                    ),
                  ),
                  const Spacer(),
                  const MyCounter(),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  MyCounterState createState() => MyCounterState();
}

class MyCounterState extends State<MyCounter> {
  int counter = 0; // العدد الابتدائي

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
