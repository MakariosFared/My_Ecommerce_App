import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/my_favorites/data/models/my_favorite_item_model.dart';
import 'package:dikkan/Features/my_favorites/presentation/views/widgets/rating.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyFavoritesItem extends StatelessWidget {
  const MyFavoritesItem({
    super.key,
    required this.myFavoriteItemModel,
  });

  final MyFavoriteItemModel myFavoriteItemModel;
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
                      myFavoriteItemModel.productName,
                      style: Styles.textStyleSfProDisplayRegular15.copyWith(
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff222B45),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          'assets/images/restaurant.svg',
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          myFavoriteItemModel.shopName,
                          style: Styles.textStyleSfProDisplayRegular12.copyWith(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff8F9BB3),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      // width: MediaQuery.of(context).size.width - 157,
                      child: Rating(),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 15,
                      right: 15,
                    ),
                    child: Icon(
                      Icons.bookmark,
                      color: kGreenColor,
                      size: 28,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                      right: 10,
                    ),
                    child: Text(
                      '${myFavoriteItemModel.price} SAR',
                      style: Styles.textStyleSfProDisplayRegular12.copyWith(
                        fontWeight: FontWeight.w700,
                        color: kGreenColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


