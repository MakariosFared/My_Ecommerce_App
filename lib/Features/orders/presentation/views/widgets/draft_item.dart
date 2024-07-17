import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/orders/data/models/draft_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DraftItem extends StatelessWidget {
  const DraftItem({super.key, required this.draftItemModel});


final DraftItemModel draftItemModel;
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
              Container(
                //TODO: #1 image
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
                      draftItemModel.productName,
                      textWidthBasis: TextWidthBasis.parent,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyleSfProDisplayRegular15.copyWith(
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff222B45),
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/draft location icon.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          draftItemModel.location,
                          style: Styles.textStyleSfProDisplayRegular12.copyWith(
                            color: const Color(0xffACB1C0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 157,
                      child: Row(
                        children: [
                          Text(
                            '${draftItemModel.numberOfItems} Items',
                            style:
                                Styles.textStyleSfProDisplayRegular12.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: const Color(0xffACB1C0),
                            ),
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
