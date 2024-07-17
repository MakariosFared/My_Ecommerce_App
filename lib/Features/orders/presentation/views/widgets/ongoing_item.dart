import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class OngoingItem extends StatelessWidget {
  const OngoingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.black.withOpacity(0.18),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 98,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 95,
                decoration: const BoxDecoration(
                  color: Color(0xffC5CEE0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(4),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kichi Coffee & Drink',
                      style: Styles.textStyleSfProDisplayRegular15
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          'ID: ',
                          style: Styles.textStyleSfProDisplayRegular12.copyWith(
                            color: kGreenColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '43e2 116H',
                          style: Styles.textStyleSfProDisplayRegular12.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '4 Items',
                      style: Styles.textStyleSfProDisplayRegular12.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: const Color(0xffACB1C0),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 14,
                  right: 8,
                ),
                child: Text(
                  'Shipping',
                  style: Styles.textStyleSfProDisplayRegular12.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: kGreenColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}