import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/orders/data/models/ongoing_item_model.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class OngoingItem extends StatelessWidget {
  const OngoingItem({
    super.key,
    required this.ongoingItemModel,
  });

  final OngoingItemModel ongoingItemModel;

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
                      ongoingItemModel.productName,
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
                          ongoingItemModel.id,
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
                            '${ongoingItemModel.nubOfItems} Items',
                            style:
                                Styles.textStyleSfProDisplayRegular12.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              color: const Color(0xffACB1C0),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            ongoingItemModel.state,
                            style:
                                Styles.textStyleSfProDisplayRegular12.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                              color: ongoingItemModel.state == 'Shipping'
                                  ? kGreenColor
                                  : ongoingItemModel.state == 'Waiting'
                                      ? const Color(0xff25418B)
                                      : const Color(0xffE02020),
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
