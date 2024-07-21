import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class MyFavoritesItem extends StatelessWidget {
  const MyFavoritesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8,
      ),
      child: Card(
        elevation: 10,
        shadowColor: Colors.black.withOpacity(0.18),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 98,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //TODO: #1 image
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
                      textWidthBasis: TextWidthBasis.parent,
                      overflow: TextOverflow.ellipsis,
                      'zz',
                      style: Styles.textStyleSfProDisplayRegular15.copyWith(
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff222B45),
                      ),
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
                          'zz',
                          style: Styles.textStyleSfProDisplayRegular12.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 157,
                      child: Row(
                        children: [
                          Text(
                            'zz',
                            style:
                                Styles.textStyleSfProDisplayRegular12.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              color: const Color(0xffACB1C0),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "zz",
                            
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}