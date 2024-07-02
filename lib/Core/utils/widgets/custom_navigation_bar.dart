import 'package:dikkan/Core/utils/custom_icon.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          GestureDetector(
            onTap: () {},
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  MyFlutterApp.home_icon,
                  color: Color(0xffD9D9D9),
                ),
                Text(
                  'Home',
                  style: TextStyle(color: Color(0xffD9D9D9)),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  MyFlutterApp.orders_icon,
                  color: Color(0xffD9D9D9),
                ),
                Text('Orders', style: TextStyle(color: Color(0xffD9D9D9))),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  MyFlutterApp.search_icon,
                  color: Color(0xffD9D9D9),
                ),
                Text('Search', style: TextStyle(color: Color(0xffD9D9D9))),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  MyFlutterApp.account_icon,
                  color: Color(0xffD9D9D9),
                ),
                Text(
                  'Account',
                  style: TextStyle(color: Color(0xffD9D9D9)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
