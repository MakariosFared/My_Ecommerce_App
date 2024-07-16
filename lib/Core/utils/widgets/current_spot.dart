import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_button.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CurrentSpot extends StatelessWidget {
  const CurrentSpot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'Your Current Spot',
          style: Styles.textStyleSemiBold12,
        ),
        const SizedBox(height: 5),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              barrierColor: Colors.transparent,
              // elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              backgroundColor: Colors.white,
              context: context,
              builder: (context) {
                return SizedBox(
                  height: 270,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 18,
                        ),
                        child: Text(
                          'Your Address',
                          // style: GoogleFonts.dmSans(
                          //   color: const Color(0xff9797A1),
                          //   fontSize: 16,
                          //   fontWeight: FontWeight.w400,
                          // ),
                        ),
                      ),
                      const Divider(
                        height: 0,
                        color: Color(0xffEFEFF1),
                        thickness: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 20,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 74,
                              width: 74,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent,
                                border: Border.all(
                                  color: const Color(0xffEFEFF1),
                                ),
                              ),
                              child: SvgPicture.asset(
                                'assets/images/Your Location.svg',
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const Text(
                              'Your Location',
                              // style: GoogleFonts.dmSans(
                              //   color: const Color(0xff9797A1),
                              //   fontSize: 18,
                              //   fontWeight: FontWeight.w600,
                              // ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: SizedBox(
                          // height: 60,
                          width: double.infinity,
                          child: CustomButton(
                            borderRadius: BorderRadius.circular(10),
                            text: 'Add Location',
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Row(
            children: [
              SvgPicture.asset(kLocationIcon),
              const SizedBox(
                width: 8,
              ),
              const Text(
                'Lorem Ipsum Street, No. 1',
                style: Styles.textStyleBold14,
              ),
              const SizedBox(
                width: 8,
              ),
              SvgPicture.asset('assets/images/arrow_drop_down.svg')
            ],
          ),
        ),
      ],
    );
  }
}
